SELECT Ride_Date, Num_Riders FROM (
	SELECT DATE(Ride_Date) AS Ride_Date, SUM(Num_Riders) AS Num_Riders
	FROM Ridership GROUP BY DATE(Ride_Date)
)
WHERE STRFTIME('%m%d', Ride_Date) == '1225' AND DATE(Ride_Date) BETWEEN '2009/1/1' AND '2020/1/1'
ORDER BY Ride_Date DESC
