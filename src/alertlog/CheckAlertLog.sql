#!/bin/bash
tail -n 300 /oracle/app/oracle/diag/rdbms/samdb/SAMDB/trace/alert_SAMDB.log |grep "TNS"
echo " "
echo " "
echo " "
echo " "
echo " "
orahatasi=`tail -n 300 /oracle/app/oracle/diag/rdbms/samdb/SAMDB/trace/alert_SAMDB.log |grep "ORA-" |wc -l`

if [ $orahatasi -eq 0 ]
then 
        echo "ORA HATASI MEVCUT DEGILDIR"


else
        tail -n 300 /oracle/app/oracle/diag/rdbms/samdb/SAMDB/trace/alert_SAMDB.log |grep "ORA-"
fi;

