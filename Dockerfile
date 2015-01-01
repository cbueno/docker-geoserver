FROM cbueno/docker-appserver

RUN wget -q http://sourceforge.net/projects/geoserver/files/GeoServer/2.6.1/geoserver-2.6.1-war.zip -O /tmp/geoserver.zip

RUN apt-get update && apt-get -y install unzip

RUN unzip -q /tmp/geoserver.zip -d /tmp

RUN mv /tmp/geoserver.war /opt/tomcat/webapps/geoserver.war

CMD /opt/tomcat/bin/deploy-and-run.sh

