yum install oracle-rdbms-server-11gR2-preinstall -y
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
/bin/cp sysctl.conf /etc/sysctl.conf
yum install ntpdate compat-db* ksh libaio-devel sysstat unixODBC sysfsutils sg3_utils lsscsi zlib-devel libXp-devel libXScrnSaver  compat-libstdc++-33* oracleasm-support  elfutils-libelf-devel -y
ntpdate 1.ro.pool.ntp.org
cat /root/nutanix/securityadd >> /etc/security/limits.conf
cat addtoprofile >> /etc/profile
