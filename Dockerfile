FROM java:8
VOLUME /tmp
COPY /target/boss-bes-eureka-1.0.0-SNAPSHOT.jar /app.jar
EXPOSE 8180
ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=test"]