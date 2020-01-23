#!/bin/bash
export ORACLE_HOME=/u01/product/12.1.0/db_1
export ORACLE_SID=PROD
export PATH=/u01/product/12.1.0/db_1/bin:/usr/sbin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin

mail -s "$(echo -e "KOSKA IFS PROD SUNUCU BILGILERI\nContent-Type: text/html")" elevli.aykut.28@gmail.com,iremkaya7474@gmail.com,ucakmakci@gmail.com,cezmiaydogdu@gmail.com,halilgulhanbm@gmail.com,timurordu@gmail.com,sabiomaita@gmail.com,serkancetinkaya2017@gmail.com,kursatpiristine@gmail.com,didemsansar230788@gmail.com,telhunerson@gmail.com,haticesimsekk26@gmail.com,mehmet.aslaner@outlook.com < /home/oracle/_Linux_Automation_system_/report.html