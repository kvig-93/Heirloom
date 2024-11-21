# Design Considerations

To design the data model, we have to consider the following:

1. Data Relationships: Maintain clear relationships between experiments, processes, samples, analyses, equipment, and instruments.
 
2. Flexibility: Support multiple process types, analyses, and calibration requirements.
 
3. Scalability: Allow for additional experiments, processes, and instruments as the research grows.
 
4. Consistency: Use relational database principles to enforce integrity and prevent duplication.

5. The database is normalized to reduce redundancy and improve data integrity. The schema design allows for flexibility
   and scalability to accomodate for new process, inputs and analyses in the future.

6. Primary keys and foreign keys are created to have data consistency and enforce relationships.

7. Assumptions to design the data model, schema and target database:

 * Experiments have multiple processes which may vary in type and number and the time fields in the table are essential     for tracking sequence and duration of process. The Process Type are assumed to exist as clean vocabulary. Processes      have distinct and varying inputs and outputs.
 * Only measureable inputs are stored in ProcessInputs and to allow for dynamic inputs we store ProcessInputs separately
   from Process table. The Unit column is created to avoid inconsitencies in the unit measured for inputs.
 * Each Equipment has a unique identifier and the Locator field will is assumed to be at HQ or specific production sites    only. Equipment types are pre-defined.
 * For Samples, collection points are fixed at one of the 3 values(start,middle or end). One sample is used in multiple     analyses. Analysis table has Results column in which data are stored in JSON format for flexibility.
 * Each instrument supports multiple analyses and has a lastcalibration date column to check for trustworthiness.
 * Each piece of equipment and instrument has a unique identifier.
 * Calibration records include timestamps and are tied to specific instruments.
 * Instrument table is assumed to maintain accurate data of LastCalibrationDate. Analysis table is assumed to have
   CarbonContent field to store the results in Results column in JSON format to extract.
   
 
 

