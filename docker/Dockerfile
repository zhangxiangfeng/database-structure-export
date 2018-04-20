FROM tomcat:8.5.29-jre8-alpine

ADD platform.war /usr/local/tomcat/webapps

#RUN sed -i 'N;2a\CATALINA_OPTS="-Dfile.encoding=UTF-8 -Dlog4j.configurationFile=/usr/local/tomcat/webapps/payment/WEB-INF/log4j.xml"' /usr/local/tomcat/bin/catalina.sh

#VOLUME /usr/local/tomcat/logs/payment

EXPOSE 8080

CMD ["catalina.sh", "run"]


