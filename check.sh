
#!/bin/bash
#! Export your system path
export ORACLE_HOME=-
export ORACLE_SID=-
export PATH=-
#SYSTEM INFORMATION 
echo "<h2 align=center>System Informatıon </h2>">>/home/oracle/_Linux_Automation_system_/report.html
echo "<h3>Ip Address:`ip route get 1 | awk '{print $NF;exit}'`</h3>">>/home/oracle/_Linux_Automation_system_/report.html
echo "<h3>Hostname:`hostname`</h3>">>/home/oracle/_Linux_Automation_system_/report.html
echo "<h3>Date:`date +%d:%m:%Y\ -\ %H:%M`</h3>" >>/home/oracle/_Linux_Automation_system_/report.html

#DISK CHECK
echo "<hr size="1px" color="black"> <h1 align=center> DISK CHECK </h1>" >>/home/oracle/_Linux_Automation_system_/report.html
sh /home/oracle/_Linux_Automation_system_/src/disk_control/disk_control.sh >>/home/oracle/_Linux_Automation_system_/report.html

#BACKUP CHECK
echo "<hr size="1px" color="black"> <h1 align=center> BACKUP CHECK</h1> <body bgcolor="#C0C0C0">" >>/home/oracle/_Linux_Automation_system_/report.html
sqlplus -s / as sysdba @/home/oracle/_Linux_Automation_system_/src/backup_control/backup_control.sql >>/home/oracle/_Linux_Automation_system_/report.html

#TABLESPACE CHECK  
echo "<hr size="1px" color="black"> <h1 align=center> TABLESPACE CHECK </h1>" >>/home/oracle/_Linux_Automation_system_/report.html
sqlplus -s / as sysdba @/home/oracle/_Linux_Automation_system_/src/tablespace_control/tablespace_control.sql >>/home/oracle/_Linux_Automation_system_/report.html

#ALERTLOG CHECK     
echo "<hr size="1px" color="black"> <h1 align=center> ALERT LOG CHECK</h1> <pre> <center>" >>/home/oracle/_Linux_Automation_system_/report.html
sh /home/oracle/_Linux_Automation_system_/src/alert_log/alertlog.sh >>/home/oracle/_Linux_Automation_system_/report.html