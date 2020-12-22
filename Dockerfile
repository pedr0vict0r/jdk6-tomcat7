FROM java:6

RUN wget https://downloads.apache.org/tomcat/tomcat-7/v7.0.107/bin/apache-tomcat-7.0.107.tar.gz
RUN mkdir tomcat7
RUN tar xvf apache-tomcat-7.0.107.tar.gz -C tomcat7

WORKDIR /tomcat7/apache-tomcat-7.0.107
EXPOSE 8082

CMD ["./bin/catalina.sh", "run"]
