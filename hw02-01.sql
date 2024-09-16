SELECT Stations.Station_Name,SUM(Ridership.Num_Riders)
FROM Ridership
INNER JOIN Stations ON Ridership.Station_ID=Stations.Station_ID
WHERE CAST(Ridership.Ride_Date AS DATE) == 2020
GROUP BY Ridership.Station_ID
ORDER BY SUM(Ridership.Num_Riders) ASC
LIMIT 10
