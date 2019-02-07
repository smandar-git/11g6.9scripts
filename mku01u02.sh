mkfs -F -t ext4 /dev/sdb
mkfs -F -t ext4 /dev/sdc
SDBUUID=`blkid | grep sdb | awk '{print $2}'`
SDCUUID=`blkid | grep sdc | awk '{print $2}'`
echo $SDBUUID $SDCUUID
mkdir /u01
mkdir /u02
echo $SDBUUID /u01 ext4 defaults,errors=remount-ro 0 1 >>/etc/fstab
echo $SDCUUID /u02 ext4 defaults,errors=remount-ro 0 1 >> /etc/fstab
clear
cat /etc/fstab
echo  "***************************************"
echo "is the u01 u02 populated properly in fstab"
echo  "***************************************"
read I
mount -a
df -h
