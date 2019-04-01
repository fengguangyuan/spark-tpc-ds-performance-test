#!/bin/bash
#
# tpcdsenv.sh - UNIX Environment Setup
#

#######################################################################
# This is a mandatory parameter. Please provide the location of
# spark installation.
#######################################################################
export SPARK_HOME=${SPARK_HOME}

#######################################################################
# Script environment parameters. When they are not set the script
# defaults to paths relative from the script directory.
#######################################################################

export TPCDS_ROOT_DIR=/home/mlp/notebooks/muggle.feng/spark-tpc-ds-performance-test
export TPCDS_LOG_DIR=${TPCDS_ROOT_DIR}/log-command
export TPCDS_DBNAME=TPCDS1G
export TPCDS_WORK_DIR=${TPCDS_ROOT_DIR}/work-command

## Custom environment variables
export HADOOP_USER_NAME=muggle.feng
export TPCDS_SPARK_CLUSTER=k8s
export TPCDS_SPARK_MODE=client
export SPARK_GROUP_NAME=mlp
