FROM maven:3.8.5-openjdk-17

WORKDIR /app

COPY pom.xml .
COPY /src ./src

RUN mvn clean package -DskipTests

CMD ["java", "-jar", "target/hello-world-maven-1.0-SNAPSHOT.jar"]
