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

-- The above query will result the data in the form of table which will tell us how the CarbonContent has changed
-- for each ProcessType like Calcining, Hydroxilating for each sample with the order of each process start time to give
-- an idea of how the carboncontent trends over one process after other giving the effectiveness of each step in order.
