FROM openjdk:17
COPY /target/petApp.jar .
EXPOSE 8085
ENTRYPOINT ["java","-jar","petApp.jar"]