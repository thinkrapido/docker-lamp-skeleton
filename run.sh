#!/bin/bash

[ ! -d logs ] && mkdir logs

sudo docker run -d -p 80:80 -p 3306:3306 -v `pwd`:/var/www --name webapp webapp
