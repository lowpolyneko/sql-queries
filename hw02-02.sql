SELECT CAST(Ridership.Ride_Date AS DATE), SUM(Ridership.Num_Riders)
FROM Ridership
INNER JOIN Stations ON Ridership.Station_ID = Stations.Station_ID
WHERE Stations.Station_Name = 'State/Lake'
GROUP BY CAST(Ridership.Ride_Date AS DATE)
ORDER BY SUM(Ridership.Num_Riders) ASC
LIMIT 5
