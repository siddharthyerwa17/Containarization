FROM openjdk:11
WORKDIR /app
COPY src /app/src
RUN javac -d . src/com/example/app/App.java
CMD ["java", "com.example.app.App"]