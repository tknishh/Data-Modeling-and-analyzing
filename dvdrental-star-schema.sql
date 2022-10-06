INSERT INTO dimdata
(data_key,date,year, quarter, month, day, week, is_weekend)
SELECT
 		DISTINCT(To_CHAR(payment_date :: DATE, 'yyyMMDD'):: Integer) as date_key,
 		date (payment_date) as date,
 		EXTRACT (year from payment_date)      as year,
        EXTRACT (quarter FROM payment_date)   AS quarter,
        EXTRACT (month FROM payment_date)     AS month,
        EXTRACT (day FROM payment_date)       AS day,
        EXTRACT (week FROM payment_date)      AS week,
		CASE WHEN EXTRACT(ISODOW from payment_date) In (6,7) Then true ELSE false END
 FROM payment;

select * from dimdata;