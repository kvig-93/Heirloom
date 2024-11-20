# Entity-Relationship Diagram (ERD)

Here's the ERD (description in text form):

Experiment: ExperimentID (PK), Scientist, Description, StartTime, EndTime
Linked to Process.

Process: ProcessID (PK), ExperimentID (FK), ProcessType, EquipmentID (FK), StartTime, EndTime
Linked to Equipment and Sample.

Equipment: EquipmentID (PK), Type, Location, Identifier

Sample: SampleID (PK), ProcessID (FK), CollectionPoint (start/middle/end)
Linked to Analysis.

Analysis: AnalysisID (PK), SampleID (FK), InstrumentID (FK), AnalysisType, Parameters, Results

Instrument: InstrumentID (PK), Type, Capabilities, LastCalibration
Linked to Calibration.

Calibration: CalibrationID (PK), InstrumentID (FK), CalibrationDate
