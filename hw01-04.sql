/* 2019 */
SELECT SUM(Num_Riders) FROM Ridership
WHERE Station_ID = (SELECT Station_ID FROM Stations
WHERE Station_Name = 'O''Hare Airport') AND
CAST(Ride_Date as DATE) == 2019;

/* 2020 */
SELECT SUM(Num_Riders) FROM Ridership
WHERE Station_ID = (SELECT Station_ID FROM Stations
WHERE Station_Name = 'O''Hare Airport') AND
CAST(Ride_Date as DATE) == 2020
