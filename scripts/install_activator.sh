#!/bin/bash

###############################################################
# Copyright (C) 2015 ClassCat(R) Co.,Ltd. All rights reserved.
###############################################################

# --- HISOTRY -------------------------------------------------
#
# -------------------------------------------------------------

export LC_ALL=C

mkdir -p /opt/packages

cd /opt/packages

wget https://downloads.typesafe.com/typesafe-activator/1.3.6/typesafe-activator-1.3.6-minimal.zip
# wget https://downloads.typesafe.com/typesafe-activator/1.3.6/typesafe-activator-1.3.6-minimal.zip?_ga=1.66975274.56746480.1445890795

apt-get update

apt-get install -y unzip

unzip typesafe-activator-1.3.6-minimal.zip

ln -s /opt/packages/activator-1.3.6-minimal /opt/activator

chmod 0755 /opt/activator/activator

ln -s /opt/activator/activator /usr/local/bin/activator
