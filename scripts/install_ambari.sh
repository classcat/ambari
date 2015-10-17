#!/bin/bash

#apt-get install ntp

cd /etc/apt/sources.list.d

wget http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.1.2/ambari.list

apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD

apt-get update

apt-get install -y ambari-server

# ambari-server setup

# ambari-server start


#cd ~

#ssh-keygen -t rsa -P ""


