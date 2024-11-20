SELECT 
    i.Type AS InstrumentType,
    i.LastCalibration,
    DATEDIFF('day', i.LastCalibration, CURRENT_TIMESTAMP()) AS DaysSinceLastCalibration
FROM 
    Instrument i
WHERE 
    i.Type = 'Combustion Analyzer';
