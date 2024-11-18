
# MRI Data ANalysis

## Introduction

### 1 About Data sets

This project uses the Open Access Series of Imaging Studies (OASIS) data
set to **develop a predictive model for Alzheimer’s disease (AD)**.

The OASIS data set provides comprehensive MRI data for a diverse group
of individuals aged 18 to 96. It includes two primary components:
Cross-section MRI data and Longitudinal MRI data.Here, we use
longitudinal data for our modeling.

**Longitudinal MRI Data in Nondemented and Demented Older Adults**: This
set consists of a longitudinal collection of 150 subjects aged 60 to 96.
Each subject was scanned on two or more visits, separated by at least
one year for a total of 373 imaging sessions. For each subject, 3 or 4
individual T1-weighted MRI scans obtained in single scan sessions are
included. The subjects are all right-handed and include both men and
women. 72 of the subjects were characterized as nondemented throughout
the study. 64 of the included subjects were characterized as demented at
the time of their initial visits and remained so for subsequent scans,
including 51 individuals with mild to moderate Alzheimer’s disease.
Another 14 subjects were characterized as nondemented at the time of
their initial visit and were subsequently characterized as demented at a
later visit.

### 2 About Analysis Objectives

The project will build several machine learning models to predict
dementia/Alzheimer’s disease and compare the performances of these
models.

### 3 Intitial Code Description

`codes/code1_clean.R`  
- clean the original data set and stored it in the `data` folder.

`codes/code2_explore.R`  
- generating the exploratory analysis of the data set and create a
summary table and some plots

`codes/code3_render.R`  
- render the final report

`report.Rmd`  
- generate the final report

## Make report

To build the report, one should first clone the project repository to a
desired location.  
Once the files are in the desired location, one can build the report by
executing `make`.
