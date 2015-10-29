#!/bin/bash

###############################################################
# Copyright (C) 2015 ClassCat(R) Co.,Ltd. All rights reserved.
###############################################################

#--- HISTORY ----------------------------------------------------------
# 29-oct-15 : jdk8u65
# 17-oct-15 : discard jdk.sh, instead, use update-alternatives.
# 15-oct-15 : change the path.
# 15-oct-15 : fixed.
#----------------------------------------------------------------------


export LC_ALL=C

TARGET=jdk1.8.0_65

CWD=`pwd`

mkdir -p /opt/packages

cd /opt/packages

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz
#wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz

tar xfz jdk-8u65-linux-x64.tar.gz
#tar xfz jdk-8u5-linux-x64.tar.gz

mkdir -p /usr/lib/jvm

mv $TARGET /usr/lib/jvm
#mv jdk1.8.0_05 /usr/lib/jvm

#cat << _EOB_ > /etc/profile.d/jdk.sh
#export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_05
#export PATH=\$JAVA_HOME/bin:\$PATH
##export PATH=\$PATH:\$JAVA_HOME/bin
#_EOB_

update-alternatives --install "/usr/bin/java"   "java"   "/usr/lib/jvm/${TARGET}/bin/java"   1
update-alternatives --install "/usr/bin/javac"  "javac"  "/usr/lib/jvm/${TARGET}/bin/javac"  1
update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/${TARGET}/bin/javaws" 1

#update-alternatives --install "/usr/bin/java"   "java"   "/usr/lib/jvm/jdk1.8.0_05/bin/java"   1
#update-alternatives --install "/usr/bin/javac"  "javac"  "/usr/lib/jvm/jdk1.8.0_05/bin/javac"  1
#update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0_05/bin/javaws" 1

exit 0
