#!/bin/bash

# for some reason docker does not execute the RUN cp operation not before the entryppoint is called
cp /myconfig/* /config

# make cloud enabled configuration possible
if [ -f /data/tomcat-setenv.sh ] ; then 
    cp /data/tomcat-setenv.sh /config/tomcat-setenv.sh
    cp /data/tomcat-setenv.sh /usr/share/tomcat7/bin/setenv.sh
fi

if [ ! -f /webapps/ontop.war ] ; then
   if [ -f /download ] ; then 
   	cp /download /webapps/ontop.zip
        cd /webapps
        unzip ontop.zip
   fi
   if [ -f /releases/ontop-sesame-webapps-1.18.0.1.zip ] ; then
       cp /releases/ontop-sesame-webapps-1.18.0.1.zip /webapps/ontop.zip
       cd /webapps
       unzip ontop.zip
  fi
fi


# start the entrypoint default script.
/config/startup-tomcat.sh

