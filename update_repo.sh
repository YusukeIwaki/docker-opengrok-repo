#!/bin/bash

cd /var/opengrok/src

if [ ! -e ".repo" ]; then
  repo init -u $REPO_INIT_URL
fi

repo prune
repo sync -j2

rm -rf /var/opengrok/data
rm -rf /var/opengrok/etc
mkdir /var/opengrok/data
mkdir /var/opengrok/etc

OpenGrok index
