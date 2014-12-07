#!/bin/bash

cd webapp

# setup for zend framework 2
[ -e data ] && chmod 777 data
[ -e compoeser.phar ] && php composer.phar update
[ -e compoeser.phar ] && php composer.phar install

