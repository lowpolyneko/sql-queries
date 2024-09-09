SELECT Ride_Date, MIN(Num_Riders) FROM (
	SELECT DATE(Ride_Date) AS Ride_Date, SUM(Num_Riders) AS Num_Riders
	FROM Ridership GROUP BY DATE(Ride_Date)
)
