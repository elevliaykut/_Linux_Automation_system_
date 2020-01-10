#!/bin/bash

tail -n 100 /u01/app/oracle/diag/rdbms/orcl/orcl/trace/alert_orcl.log |grep "ARC"

