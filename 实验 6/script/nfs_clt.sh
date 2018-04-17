#!/bin/bash
source ./environ.sh

#apt update -y
if [[ $? -ne 0 ]]; then
        echo "apt update failed!"
        exit
fi


sudo apt-get install nfs-common || echo "Installation NFS client side failed" # && exit

sudo mkdir -p $nfs_general_clt
sudo mkdir -p $nfs_home_clt

sudo mount $nfs_srv:$nfs_general_srv $nfs_general_clt
sudo mount $nfs_srv:$nfs_home_srv $nfs_home_clt

