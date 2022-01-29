 #!/bin/bash
if [ $# -ne 1 ];then
    echo "bash `basename "$0"` [AD account]"
    exit 1
fi

USER=$1
# MOUNT_DIR='/mnt/motional_database'
# NAS_DIR='//10.158.10.28/Motional_Database'
MOUNT_DIR='/mnt/oms_database'
NAS_DIR='//10.158.10.24/OMS_Database'


sudo mkdir -p ${MOUNT_DIR}
sudo mount -v -t cifs -o username="${USER}",vers=2.0,domain=LGE,uid=$(id -u),gid=$(id -g),forceuid,forcegid,sec=ntlmsspi ${NAS_DIR} ${MOUNT_DIR}
