#! /bin/bash
#variables/constants
VERSION=$(curl -L http://geoserver.org/release/stable/ | sed -n 's/<h1>GeoServer \([0-9]*.[0-9]*.[0-9]*\).*/\1/p' | sed 's/ //g')
WAR_DIR="war"
FILE="geoserver-${VERSION}-war.zip"
TAG="webmap/geoserver"

## ECHO a VERSION ##
echo "VERSION------------->${VERSION}"

if [ ! -d "$WAR_DIR" ]; then
  mkdir $WAR_DIR
else
  rm -rf $WAR_DIR/*
fi

wget "http://sourceforge.net/projects/geoserver/files/GeoServer/${VERSION}/${FILE}" -P $WAR_DIR

unzip "$WAR_DIR/$FILE" -d $WAR_DIR
sudo docker build -t $TAG .