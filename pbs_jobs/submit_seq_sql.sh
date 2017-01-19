#!/bin/sh

qsub -v query="3",dataset="1",version="seq",samples="50" job_sql
qsub -v query="3",dataset="2",version="seq",samples="50" job_sql
qsub -v query="3",dataset="4",version="seq",samples="50" job_sql
qsub -v query="3",dataset="8",version="seq",samples="50" job_sql
qsub -v query="3",dataset="16",version="seq",samples="50" job_sql
qsub -v query="3",dataset="32",version="seq",samples="50" job_sql
