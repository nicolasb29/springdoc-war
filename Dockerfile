FROM tomcat:11-jre25
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY build/libs/springdoc-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/springdoc.war

# Port d'écoute (par défaut : 8080)
EXPOSE 8080

# Démarre Tomcat
CMD ["catalina.sh", "run"]