#! /bin/bash
export ORACLE_HOME=/oracle/app/oracle/product/12.1.0.2/db_1
export ORACLE_SID=SAMDB
export PATH=/oracle/app/oracle/product/12.1.0.2/db_1/bin:/usr/sbin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin

#SUNUCU BILGISI 
echo "<h2 align=center>SUNUCU BILGISI </h2>">>/oracle/Daily_Control/report.html
echo "<h3>Ip Adresi:`ip route get 1 | awk '{print $NF;exit}'`</h3>">>/oracle/Daily_Control/report.html
echo "<h3>Hostname:`hostname`</h3>">>/oracle/Daily_Control/report.html
echo "<h3>Tarih:`date +%d:%m:%Y\ -\ %H:%M`</h3>" >>/oracle/Daily_Control/report.html

#DISK BILGISI
echo "<hr size="1px" color="black"> <h1 align=center> DISK BILGISI </h1>" >>/oracle/Daily_Control/report.html
sh /oracle/Daily_Control/src/disk_control/disk_control.sh >>/oracle/Daily_Control/report.html

#BACKUP BILGISI
echo "<hr size="1px" color="black"> <h1 align=center> BACKUP BILGISI</h1> <body bgcolor="#C0C0C0">" >>/oracle/Daily_Control/report.html
sqlplus -s / as sysdba @/oracle/Daily_Control/src/backup_control/backup_control.sql >>/oracle/Daily_Control/report.html

#TABLESPACE BILGISI  
echo "<hr size="1px" color="black"> <h1 align=center> TABLESPACE BILGISI </h1>" >>/oracle/Daily_Control/report.html
sqlplus -s / as sysdba @/oracle/Daily_Control/src/tablespace_control/tablespace_control.sql >>/oracle/Daily_Control/report.html

#ALERTLOG BILGISI     
echo "<hr size="1px" color="black"> <h1 align=center> ALERT LOG BILGISI</h1> <pre> <center>" >>/oracle/Daily_Control/report.html
sh /oracle/Daily_Control/src/alert_log/alertlog.sh >>/oracle/Daily_Control/report.html
