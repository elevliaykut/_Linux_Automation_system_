#!/bin/bash

#! Edit your System ORACLE_HOME path, ORACLE_SID, PATH

export ORACLE_HOME= -
export ORACLE_SID= -
export PATH= -


#! Add your email address to see system report

mail -s "$(echo -e "SUNUCU BILGILERI\nContent-Type: text/html")" elevli.aykut.28@gmail.com < /home/oracle/_Linux_Automation_system_/report.html