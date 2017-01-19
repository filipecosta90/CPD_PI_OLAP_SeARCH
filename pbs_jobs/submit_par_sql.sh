#!/bin/sh

#qsub -v query="3",dataset="1",version="par",samples="50" job_sql
#qsub -v query="3",dataset="2",version="par",samples="50" job_sql
#qsub -v query="3",dataset="4",version="par",samples="50" job_sql
#qsub -v query="3",dataset="8",version="par",samples="50" job_sql
#qsub -v query="3",dataset="16",version="par",samples="50" job_sql
qsub -v query="3",dataset="32",version="par",samples="50" job_sql
