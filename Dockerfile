FROM amazoncorretto:17
COPY target/customer-1.0.1.jar /
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "customer-1.0.1.jar"]


################ MULTI STAGE DOCKER BUILD###########################

################ First Stage build ###########################
# FROM maven:3.9.4-amazoncorretto-17 as build1
# WORKDIR /java
# COPY . .
# RUN mvn clean install

########## Second Stage build ###########
# FROM amazoncorretto:17-alpine
# WORKDIR /java
# COPY --from=build1 /java/target/customer-1.0.1.jar .
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","customer-1.0.1.jar"]
