#! /bin/bash

mkdir -p /data1/systemFiles/dbrm
touch /data1/systemFiles/dbrm/BRM_saves_journal
chown -R mysql:mysql /var/lib/mysql
StorageManager
mcs-loadbrm.py
workernode DBRM_Worker1
controllernode
PrimProc
ExeMgr
WriteEngineServer
DMLProc
DDLProc
post-mysqld-install
dbbuilder 7
/usr/share/mysql/mysql.server start