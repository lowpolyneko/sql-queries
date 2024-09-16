SELECT Stops.Stop_ID, Stops.Stop_Name
FROM Stops
INNER JOIN Stations ON Stops.Station_ID = Stations.Station_ID
WHERE Stations.Station_Name = 'State/Lake'
