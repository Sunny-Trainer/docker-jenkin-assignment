# ---------- Stage 1: build the WAR with Maven ----------
FROM maven:3.9.6-eclipse-temurin-17 AS builder

# Copy Maven project files
COPY pom.xml .
COPY src ./src

# Build the WAR
RUN mvn -B clean package

# ---------- Stage 2: lightweight Tomcat runtime ----------
FROM tomcat:9-jdk17

# Copy the built WAR into Tomcat’s webapps folder
COPY --from=builder target/webapp.war /usr/local/tomcat/webapps/

# Expose Tomcat’s default port
EXPOSE 8080

CMD ["catalina.sh", "run"]

