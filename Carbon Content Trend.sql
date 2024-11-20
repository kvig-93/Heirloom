SELECT 
    p.ProcessType, 
    s.SampleID, 
    a.Results:"CarbonContent"::FLOAT AS CarbonContent
FROM 
    Process p
JOIN 
    Sample s ON p.ProcessID = s.ProcessID
JOIN 
    Analysis a ON s.SampleID = a.SampleID
WHERE 
    a.AnalysisType = 'CarbonContent'
ORDER BY 
    p.StartTime;
