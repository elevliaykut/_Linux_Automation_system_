#!/bin/bash

export ORACLE_HOME=/oracle/app/oracle/product/12.1.0.2/db_1
export ORACLE_SID=SAMDB
export PATH=/oracle/app/oracle/product/12.1.0.2/db_1/bin:/usr/sbin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin

mail -s "$(echo -e "Sunucu Kontrol\nContent-Type: text/html")" elevli.aykut.28@gmail.com,iremkaya7474@gmail.com < /oracle/Daily_Control/report.html
