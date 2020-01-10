echo "<h2 align=center>SUNUCU BILGISI </h2>">>/home/oracle/proje/report.html
echo "<h3>Ip Adresi:`ip route get 1 | awk '{print $NF;exit}'`</h3>" >>/home/oracle/proje/report.html
echo "<h3>Hostname:`hostname` </h3>" >>/home/oracle/proje/report.html
echo "<h3>Bugunun Tarihi: `date +%d:%m:%Y\ -\ %H:%M` </h3>" >>/home/oracle/proje/report.html


#################         DISK BILGISI            ##############################

echo "<hr size="1px" color="black"> <h1 align=center> DISK BILGISI </h1>" >>/home/oracle/proje/report.html
sh /home/oracle/proje/src/disk/diskbilgisi.sh >>/home/oracle/proje/report.html
################################################################################

################          BACKUP BILGISI          ##############################
echo "<hr size="1px" color="black"> <h1 align=center> BACKUP BILGISI</h1> <body bgcolor="#C0C0C0">" >>/home/oracle/proje/report.html
sqlplus / as sysdba @/home/oracle/proje/src/backup/backup.sql >>/home/oracle/proje/report.html
################################################################################

###############           TABLESPACE BILGISI      ##############################
echo "<hr size="1px" color="black"> <h1 align=center> TABLESPACE BILGISI </h1>" >>/home/oracle/proje/report.html
sqlplus /  as sysdba @/home/oracle/proje/src/tablespace/tablespace.sql >>/home/oracle/proje/report.html
################################################################################

##############             ALERT_ BİLGİSİ         #############################
echo "<hr size="1px" color="black"> <h1 align=center> LOG BILGISI </h1> <pre> <center>" >>/home/oracle/proje/report.html
sh /home/oracle/proje/src/_alert_/alertlog.sh >>/home/oracle/proje/report.html

################################################################################
