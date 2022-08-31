#!/bin/bash
cd Desktop/
mkdir vncclient
cd vncclient/
wget https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer-6.22.515-Linux-x64.deb
sudo apt install ./VNC-Viewer-6.22.515-Linux-x64.deb
ssh root@$1
vncserver -kill :2
vncserver
exit
ssh root@$1 -L 61000:localhost:5902
