#removing users created by oracle-preinstall rpm
sed -i    '/oracle/d' /etc/passwd
sed -i  '/oracle/d' /etc/group
sed -i  '/oinstall/d' /etc/group
groupadd -g 1020 asmadmin
groupadd -g 1021 asmdba
groupadd -g 1022 asmoper
groupadd -g 1023 oinstall
groupadd -g 1024 dba
groupadd -g 1025 oper
useradd -u 1100 -g oinstall -G asmadmin,asmdba,asmoper grid
useradd -u 1101 -g oinstall -G dba,asmdba,oper oracle
mkdir -p /u01/app/11.2.0/grid
mkdir -p /u02/app/oracle/product/11.2.0/db_1
chown -R grid:asmadmin /u01
chown -R oracle:oinstall /u02
chown -R oracle:oinstall /home/oracle
chown -R grid:oinstall /home/grid
chmod -R 775 /u01
chmod -R 775 /u02
