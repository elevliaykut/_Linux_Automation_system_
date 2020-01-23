
#!/bin/bash
export ORACLE_HOME=/u01/product/12.1.0/db_1
export ORACLE_SID=PROD
export PATH=/u01/product/12.1.0/db_1/bin:/usr/sbin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin
#SUNUCU BILGISI 
echo "<h2 align=center>SUNUCU BILGISI </h2>">>/home/oracle/_Linux_Automation_system_/report.html
echo "<h3>Ip Adresi:`ip route get 1 | awk '{print $NF;exit}'`</h3>">>/home/oracle/_Linux_Automation_system_/report.html
echo "<h3>Hostname:`hostname`</h3>">>/home/oracle/_Linux_Automation_system_/report.html
echo "<h3>Tarih:`date +%d:%m:%Y\ -\ %H:%M`</h3>" >>/home/oracle/_Linux_Automation_system_/report.html

#DISK BILGISI
echo "<hr size="1px" color="black"> <h1 align=center> DISK BILGISI </h1>" >>/home/oracle/_Linux_Automation_system_/report.html
sh /home/oracle/_Linux_Automation_system_/src/disk_control/disk_control.sh >>/home/oracle/_Linux_Automation_system_/report.html

#BACKUP BILGISI
echo "<hr size="1px" color="black"> <h1 align=center> BACKUP BILGISI</h1> <body bgcolor="#C0C0C0">" >>/home/oracle/_Linux_Automation_system_/report.html
sqlplus -s / as sysdba @/home/oracle/_Linux_Automation_system_/src/backup_control/backup_control.sql >>/home/oracle/_Linux_Automation_system_/report.html

#TABLESPACE BILGISI  
echo "<hr size="1px" color="black"> <h1 align=center> TABLESPACE BILGISI </h1>" >>/home/oracle/_Linux_Automation_system_/report.html
sqlplus -s / as sysdba @/home/oracle/_Linux_Automation_system_/src/tablespace_control/tablespace_control.sql >>/home/oracle/_Linux_Automation_system_/report.html

#ALERTLOG BILGISI     
echo "<hr size="1px" color="black"> <h1 align=center> ALERT LOG BILGISI</h1> <pre> <center>" >>/home/oracle/_Linux_Automation_system_/report.html
sh /home/oracle/_Linux_Automation_system_/src/alert_log/alertlog.sh >>/home/oracle/_Linux_Automation_system_/report.html