#!/bin/bash

VERSION=2.9.0
PORT=1234

if ! [ -f "wiremock-standalone-$VERSION.jar" ];
then
   wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$VERSION/wiremock-standalone-$VERSION.jar
fi

java -jar wiremock-standalone-$VERSION.jar --port $PORT
