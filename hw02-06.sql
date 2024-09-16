SELECT Stations.Station_Name, SUM(Stops.ADA)
FROM Stations
INNER JOIN Stops ON Stations.Station_ID = Stops.Station_ID
WHERE Stops.ADA > 0
GROUP BY Stations.Station_ID
ORDER BY COUNT(Stops.ADA) DESC, Stations.Station_Name
