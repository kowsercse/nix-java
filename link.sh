#!/usr/bin/env bash

home=~
declare -A installations

installations[jdk]=jdk1.8.0_40
installations[tomcat]=apache-tomcat-8.0.21
installations[maven]=apache-maven-3.3.1
installations[groovy]=groovy-2.4.3
installations[gradle]=gradle-2.3
installations[grails]=grails-3.0.1
installations[hadoop]=hadoop-2.6.0
installations[hbase]=hbase-1.0.0
installations[hive]=apache-hive-1.1.0-bin
installations[pig]=pig-0.14.0

cd /opt
for key in ${!installations[@]}; do
	sudo ln -s $home/downloads/${installations[${key}]} $key
done
