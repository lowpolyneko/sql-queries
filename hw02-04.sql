SELECT DISTINCT Color
FROM Lines
JOIN StopDetails ON Lines.Line_ID = StopDetails.Line_ID
JOIN Stops ON StopDetails.Stop_ID = Stops.Stop_ID
JOIN Stations ON Stops.Station_ID = Stations.Station_ID
WHERE Station_Name = 'State/Lake'
ORDER BY Color ASC
