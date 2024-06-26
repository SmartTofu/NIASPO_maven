FROM maven:3.8.6-openjdk-11-slim
WORKDIR /app
COPY . .
EXPOSE 8080
RUN mvn clean install
CMD ["mvn", "clean", "compile", "exec:java"]
