SELECT Stations.Station_Name, COUNT(Stops.ADA)
FROM Stations
INNER JOIN Stops ON Stations.Station_ID = Stops.Station_ID
GROUP BY Stations.Station_ID
ORDER BY COUNT(Stops.ADA) DESC, Stations.Station_Name
