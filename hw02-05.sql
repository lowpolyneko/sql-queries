SELECT Lines.Color, COUNT(StopDetails.Stop_ID)
FROM Lines
JOIN StopDetails ON Lines.Line_ID = StopDetails.Line_ID
GROUP BY Lines.Line_ID
ORDER BY COUNT(StopDetails.Stop_ID), Lines.Color
