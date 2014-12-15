#!/bin/bash
$CATALINA_HOME/bin/shutdown.sh
sleep 1
git pull
mvn clean compile war:war
mkdir webapps
mkdir dbsql
rm -rf webapps/*
mv target/*.war target/ROOT.war
cp target/*.war webapps/
$CATALINA_HOME/bin/startup.sh
mysqldump -u root -proot oye > dbsql/backup-$(date +%Y-%m-%d\ %H:%M:%S).sql
