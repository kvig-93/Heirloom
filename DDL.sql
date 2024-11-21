-- Experiment table
CREATE TABLE Experiment (
    ExperimentID INT AUTOINCREMENT PRIMARY KEY,
    Scientist VARCHAR(100),
    Description TEXT,
    StartTime TIMESTAMP,
    EndTime TIMESTAMP
);

-- Equipment table
CREATE TABLE Equipment (
    EquipmentID INT AUTOINCREMENT PRIMARY KEY,
    Type VARCHAR(50),
    Location VARCHAR(100),
    Identifier VARCHAR(50)
);

-- Process table
CREATE TABLE Process (
    ProcessID INT AUTOINCREMENT PRIMARY KEY,
    ExperimentID INT REFERENCES Experiment(ExperimentID),
    ProcessType VARCHAR(50),
    EquipmentID INT REFERENCES Equipment(EquipmentID),
    StartTime TIMESTAMP,
    EndTime TIMESTAMP
);

--ProcessInputs Table
CREATE TABLE ProcessInputs (
    InputID INT PRIMARY KEY,
    ProcessID INT,
    InputName VARCHAR(50),
    InputValue FLOAT,
    Unit VARCHAR(20),
    ProcessID INT REFERENCES Process(ProcessID)
);

-- Sample table
CREATE TABLE Sample (
    SampleID INT AUTOINCREMENT PRIMARY KEY,
    ProcessID INT REFERENCES Process(ProcessID),
    CollectionPoint VARCHAR(20) CHECK (CollectionPoint IN ('start', 'middle', 'end'))
);

-- Instrument table
CREATE TABLE Instrument (
    InstrumentID INT AUTOINCREMENT PRIMARY KEY,
    Type VARCHAR(50),
    Capabilities TEXT,
    LastCalibration TIMESTAMP
);

-- Calibration table
CREATE TABLE Calibration (
    CalibrationID INT AUTOINCREMENT PRIMARY KEY,
    InstrumentID INT REFERENCES Instrument(InstrumentID),
    CalibrationDate TIMESTAMP
);

-- Analysis table
CREATE TABLE Analysis (
    AnalysisID INT AUTOINCREMENT PRIMARY KEY,
    SampleID INT REFERENCES Sample(SampleID),
    InstrumentID INT REFERENCES Instrument(InstrumentID),
    AnalysisType VARCHAR(50),
    Parameters VARIANT, 
    Results VARIANT    
);
