SELECT 
    i.Type AS InstrumentType,
    i.LastCalibration,
    DATEDIFF('day', i.LastCalibration, CURRENT_TIMESTAMP()) AS DaysSinceLastCalibration
FROM 
    Instrument i
WHERE 
    i.Type = 'Combustion Analyzer';

-- Based on the value we get at DaysSinceLastCalibration column and the standards set by the organization for calibration 
-- For exmaple, say 15 or 30 days is the standard, we can compare the result to see when was the last time the insutrument  
-- has been calibirated which would help in determining whether the combustion analyzer data can be trusted.
