oracleasm configure -i
oracleasm init
for i in sdd sde sdf ;do parted /dev/$i mklabel gpt done;done
for i in sdd sde sdf ;do parted /dev/$i mkpart primary 64 100% ;done
oracleasm createdisk  CRSDG /dev/sdd1 
oracleasm createdisk DATADG /dev/sde1 
oracleasm createdisk  FRADG /dev/sdf1 
oracleasm listdisks
