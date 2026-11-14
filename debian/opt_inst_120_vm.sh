#!/bin/bash

## Installiere eine Virtuelle Maschine VM 

sudo apt install \
     virt-manager


#sudo usermod -aG libvirt <user>

## Netzwerk aktivieren!
#sudo virsh net-list --all
#sudo virsh net-start default
#sudo virsh net-autostart default

## Zum Datenaustausch mit der VM (oder anderen Rechnern) vsftpd installieren.
## Die VM kann mittels Filezilla auf den Host zugreifen.
## Nur in sicheren Heimnetzen, eventuell den Host mit ufw absichern!!!
#sudo apt install vsftpd

##/etc/vsftpd.conf
#listen=YES
#listen_ipv6=NO
#local_enable=YES
#write_enable=YES
#chroot_local_user=YES
#allow_writeable_chroot=YES

## Damit der host in der VM mit den hostnamen angesprochen werden kann,
## sonst wird in der VM der Hostname über die /etc/hosts am Host aufgelöst
## und das ist 127.0.0.1:
## In der VM: /etc/hosts
# 192.168.122.1   <hostname>

## Eine weitere Möglichkeit zum Datenaustausch wäre Samba.


