FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME=/usr/src/app

WORKDIR $APP_HOME

# Adjust COPY depending on where your jar is
# If your jar is in the root of build context:
COPY app.jar app.jar

# If your jar is inside an app folder, use:
# COPY app/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
