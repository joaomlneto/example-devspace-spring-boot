#!/bin/sh

# Set maven build options
MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"

# Remove old .jar files
rm -f target/*.jar

# Build jar file
mvn package -T 1C -U -Dmaven.test.skip=true

# Rename jar file
cp target/*.jar target/main.jar

# Start application if `run` argument is passed
# XXX We change "java -jar" to "mvn spring-boot:run" to start the application.
# XXX We also add the extra argument to force color.
# XXX Spring boot doesn't color output automatically when running inside Kubernetes.
if [ "$1" = "run" ]; then
  #java -jar target/main.jar
  mvn spring-boot:run -Dspring-boot.run.arguments="--spring.output.ansi.enabled=ALWAYS"
fi
