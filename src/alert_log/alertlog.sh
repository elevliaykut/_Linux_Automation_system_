#!/bin/bash
tail -n #! Your Alert Log Path |grep "TNS"
echo " "
echo " "
echo " "
echo " "
echo " "
orahatasi=`tail -n 500 #! Your Alertlog Path  |grep "ORA-" |wc -l`

if [ $orahatasi -eq 0 ]
then 
        echo "ORA ERROR IS NOT AVAILABLE"


else
        tail -n 500 #! Your Alert Log Path |grep "ORA-"
fi;