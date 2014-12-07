#!/bin/bash

if [ -e ../config/create-db.sql ] ; then
  /usr/sbin/mysqld &
  sleep 5
  mysql -h127.0.0.1 -uroot -proot < ../config/create-db.sql
fi
