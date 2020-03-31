# Honours Project: Solution Approaches to Optimal Power Flow

By Mathew Legge, Migle Siauciulyte and Anna Warburton

## Software

Install Xpress IVE and Matlab. For Matlab, download and install the Matpower package from http://www.pserc.cornell.edu/matpower/ .

The code for running Xpress is provided in this repository. For testing on Matlab, use the following commands:

For running a Direct Current model:
```
rundcopf('case_data');
```
For running an Alternating Current model:
```
runopf('case_data');
```

## Data 

The data files are from the IEEE databases. They contain the same data for Matlab and Xpress, only their syntax is different.
