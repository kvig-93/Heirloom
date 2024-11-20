# Heirloom
# Heirloom Take-Home Assessment

Our Innovation team relies on data collected from its analytical lab, testbeds, prototypes,
and production facilities to understand how Heirloom’s accelerated mineralization process
behaves under different conditions and across scale. To develop and inform this
understanding, analytical data associated with samples (i.e., samples of the powdered
sorbent) must be readily associated with the process conditions under which the sample
was collected. This requires a data model that allows scientists to easily query data about
process conditions, samples, and analytical results. Additional context about the collected
data is provided below:

● Research scientists define and execute experiments.

● Each experiment consists of one or more processes.

● A process is an instance of a process type, with type-dependent (and measurable)
inputs and outputs) as well as a start time and an end time.

● Production equipment is required to run a process. Each piece of production
equipment has a unique identifier, and may be located at Heirloom’s headquarters,
or at one of its production sites.

● Samples are collected during the process, at either the start, middle, or end.

● Collected samples are sent to Heirloom’s lab for between 2 and 6 different
analyses.

● Laboratory instruments are required to run an analysis.

● Different types of instruments offer different analytical capabilities.

● Some instruments support more than one type of analysis.

● Every analysis is performed with a configurable set of parameters, and produces
results that may be structured data (e.g. time series mass measurements) or
unstructured data (e.g. an image file).

● All laboratory instruments require calibration at some defined frequency.

An example:
A newly arrived batch of limestone feedstock is delivered to Heirloom’s headquarters. A
research scientist is assigned to determine how its performance compares to the last
batch received from this supplier. The scientist undertakes an experiment, which consists
of calcining (process) some quantity of the feedstock (input) in a batch kiln (equipment)
at a set temperature (input), hydroxylating it (process) using a prototype lime hydrator
(equipment), then allowing it to carbonate (process) on a carbonation test bed
(equipment) under controlled conditions (input). Samples are collected at each step to
have their total carbon content (analysis) measured via a combustion analyzer
(instrument).

Prompt:
Create a data model and code to instantiate it that would support this above example,
with a summary of the design considerations. You may make assumptions as needed to
constrain the problem. Your solution may include:
● A list of the assumptions on which you based your design, including your target
database

● An entity-relationship diagram

● The DDL code that you would use to instantiate the schema


● SQL queries that would answer the following questions:
 
   ○ In the above example, how did the carbon content trend from one process
   to the next?
   
   ○ Can the data from the combustion analyzer be trusted? (i.e., when was it
   last calibrated?)
