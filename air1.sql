-- Preview latest data
SELECT * FROM airquality1 ORDER BY time DESC LIMIT 10;

-- Create or replace summary view with methane
CREATE OR REPLACE VIEW airquality_summary AS
SELECT 
    city,
    CAST(time AS DATE) AS date,

    -- Daily average values
    ROUND(AVG(pm10), 2) AS pm10,
    ROUND(AVG(pm2_5), 2) AS pm2_5,
    ROUND(AVG(carbon_monoxide), 2) AS carbon_monoxide,
    ROUND(AVG(carbon_dioxide), 2) AS carbon_dioxide,
    ROUND(AVG(nitrogen_dioxide), 2) AS nitrogen_dioxide,
    ROUND(AVG(sulphur_dioxide), 2) AS sulphur_dioxide,
    ROUND(AVG(ozone), 2) AS ozone,
    ROUND(AVG(dust), 2) AS dust,
    ROUND(AVG(uv_index), 2) AS uv_index,
    ROUND(AVG(methane), 2) AS methane,  -- ✅ Added methane

    -- Count of pollutants above safe limits
    (
        CASE WHEN AVG(pm10) > 100 THEN 1 ELSE 0 END +
        CASE WHEN AVG(pm2_5) > 60 THEN 1 ELSE 0 END +
        CASE WHEN AVG(carbon_monoxide) > 400 THEN 1 ELSE 0 END +
        CASE WHEN AVG(carbon_dioxide) > 1000 THEN 1 ELSE 0 END +  -- fixed typo
        CASE WHEN AVG(nitrogen_dioxide) > 80 THEN 1 ELSE 0 END +
        CASE WHEN AVG(sulphur_dioxide) > 80 THEN 1 ELSE 0 END +
        CASE WHEN AVG(ozone) > 180 THEN 1 ELSE 0 END +
        CASE WHEN AVG(dust) > 100 THEN 1 ELSE 0 END +
        CASE WHEN AVG(uv_index) > 7 THEN 1 ELSE 0 END +
        CASE WHEN AVG(methane) > 1800 THEN 1 ELSE 0 END  -- ✅ Added methane
    ) AS unsafe_pollutant_count

FROM airquality1
GROUP BY city, CAST(time AS DATE)
ORDER BY city, date DESC;
