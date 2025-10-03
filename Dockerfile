# Use the official Tomcat base image
# tomcat:9.0

# Expose port 8080 to the outside world
#EXPOSE 8080

# Copy the war file to the webapps directory of Tomcat
#COPY app.war /usr/local/tomcat/webapps/ROOT.war
FROM tomcat:9.0-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/maven-web-app.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

