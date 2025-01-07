FROM openjdk:17-alpine
WORKDIR /app
COPY . .
RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests
COPY target/*.jar book-connect.jar
EXPOSE 8080
CMD ["java", "-jar", "book-connect.jar"]
