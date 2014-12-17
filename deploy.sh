#!/bin/bash
$CATALINA_HOME/bin/shutdown.sh
sleep 3
git pull
mvn clean compile war:war
mkdir webapps
mkdir dbsql
rm -rf webapps/*
mv target/*.war target/ROOT.war
cp target/*.war webapps/
$CATALINA_HOME/bin/startup.sh
mysqldump -u root -proot kuajietianxia > dbsql/kuajietianxia-$(date +%Y-%m-%d-%H:%M:%S).sql
tail -n 200 -f $CATALINA_HOME/logs/catalina.out

