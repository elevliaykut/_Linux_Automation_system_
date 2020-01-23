#!/bin/bash
tail -n 1000 /u01/diag/rdbms/prod/PROD/trace/alert_PROD.log |grep "TNS"
echo " "
echo " "
echo " "
echo " "
echo " "
orahatasi=`tail -n 500 /u01/diag/rdbms/prod/PROD/trace/alert_PROD.log |grep "ORA-" |wc -l`

if [ $orahatasi -eq 0 ]
then 
        echo "ORA HATASI MEVCUT DEGILDIR"


else
        tail -n 500 /u01/diag/rdbms/prod/PROD/trace/alert_PROD.log |grep "ORA-"
fi;