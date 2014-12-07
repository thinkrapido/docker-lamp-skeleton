#!/bin/bash

if [ -e webapp/data/fixture ] ; then
  FILE=`ls webapp/data/fixture/*.sql | sort -r | head -1`
  echo "drop database if exists webapp; create database webapp; use webapp;" > image/config/create-db.sql
  [ -e "$FILE" ] && cat "$FILE" >> image/config/create-db.sql
fi

sudo docker build -t webapp image

[ -e image/config/create-db.sql ] && rm image/config/create-db.sql