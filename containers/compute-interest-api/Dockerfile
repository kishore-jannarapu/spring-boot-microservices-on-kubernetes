FROM maven:3.6.1-jdk-8-alpine
COPY ./target/spring-boot-mysql-springdatajpa-hibernate-*.jar /app/spring-boot-mysql-springdatajpa-hibernate.jar
COPY ./initialize_db.sql /app/initialize_db.sql
COPY ./custom-entrypoint.sh app/custom-entrypoint.sh
# WORKDIR /app
# RUN apk update && apk add mysql mysql-client && mvn clean package
ENTRYPOINT ["/app/custom-entrypoint.sh"]
CMD java -jar /app/spring-boot-mysql-springdatajpa-hibernate.jar
