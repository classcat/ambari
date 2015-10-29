#!/bin/bash

###############################################################
# Copyright (C) 2015 ClassCat(R) Co.,Ltd. All rights reserved.
###############################################################

# --- HISOTRY -------------------------------------------------

# -------------------------------------------------------------

export LC_ALL=C


# install spark package
mkdir -p /opt/packages

cd /opt/packages

wget http://ftp.riken.jp/net/apache/spark/spark-1.5.1/spark-1.5.1-bin-hadoop2.4.tgz

tar xfz spark-1.5.1-bin-hadoop2.4.tgz

ln -s /opt/packages/spark-1.5.1-bin-hadoop2.4 /opt/spark

cp -p /opt/spark/conf/log4j.properties.template /opt/spark/conf/log4j.properties

sed -i.bak -e "s/^log4j\.rootCategory\s*=\s*INFO.*/log4j.rootCategory=WARN, console/" /opt/spark/conf/log4j.properties

echo 'export PATH=/opt/spark/bin:$PATH' > /home/ubuntu/.bash_profile
chown ubuntu:ubuntu /home/ubuntu/.bash_profile

exit 0
