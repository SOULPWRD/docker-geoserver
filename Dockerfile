FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY war/geoserver.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
