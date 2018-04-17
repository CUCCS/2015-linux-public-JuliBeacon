#!/bin/bash


sudo apt-get install samba

sudo useradd -M -s /sbin/nologin smbuser
sudo passwd smbuser
sudo smbpasswd -a smbuser

cat<<EOT >>/etc/samba/smb.conf
[guest]
path = /home/samba/guest/
read only = yes
guest ok = yes

[demo]
path = /home/samba/demo/
read only = no
guest ok = no
force create mode = 0660
force directory mode = 2770
force user = smbuser
force group = smbgroup
EOT

smbpasswd -e smbuser
sudo groupadd smbgroup
sudo usermod -G smbgroup smbuser
mkdir -p /home/samba/guest/
mkdir -p /home/samba/demo/
sudo chgrp -R smbgroup /home/samba/guest/
sudo chgrp -R smbgroup /home/samba/demo/
sudo chmod 2775 /home/samba/guest/
sudo chmod 2770 /home/samba/demo/


sudo service smbd restart
