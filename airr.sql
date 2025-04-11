DROP TABLE IF EXISTS air_quality;
select * from air_quality;
select * from airquality1;
SELECT * FROM airquality1
WHERE city = 'Delhi'
ORDER BY time DESC
LIMIT 20;
SELECT 
    city,
    ROUND(AVG(pm2_5), 2) AS avg_pm2_5,
    ROUND(AVG(pm10), 2) AS avg_pm10,
    ROUND(AVG(carbon_monoxide), 2) AS avg_co
FROM airquality1
WHERE time >= NOW() - INTERVAL 3 DAY
GROUP BY city
ORDER BY avg_pm2_5 DESC;
SELECT city, time, pm2_5
FROM airquality1
WHERE pm2_5 > 100
ORDER BY pm2_5 DESC;

ALTER TABLE airquality1 ADD COLUMN methane FLOAT;
