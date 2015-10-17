#!/bin/bash

###############################################################
# Copyright (C) 2015 ClassCat(R) Co.,Ltd. All rights reserved.
###############################################################

#--- HISTORY ----------------------------------------------------------
#
#----------------------------------------------------------------------


export LC_ALL=C

CWD=`pwd`


apt-get install -y python-pip

pip install oauth2

apt-get install -y build-essential python-dev libev4 libev-dev

pip install cassandra-driver

