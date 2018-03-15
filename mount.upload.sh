#!/bin/sh
mount -t cifs //192.168.1.190/upload /mnt/upload -o utf8=1,username=guest,sec=ntlm,file_mode=0644,unc=\\\\192.168.1.190\\upload

