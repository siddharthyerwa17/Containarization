Step 1: Set up the project structure
- Create a new directory for your project.
- Inside the project directory, create a new directory called src. This will be the source directory for your Java application.
- Inside the src directory, create a package structure for your Java application.
    |- src
     |- com
        |- example
           |- app
              |- App.java
  |- Dockerfile


Step 2: Write the Java application code
- Open the App.java file and write your Java application code

Step 3: Build the Docker image
- Create a new file called Dockerfile inside the project directory. This file will define the steps to build the Docker image.
-Open the Dockerfile and add the following lines:
-  FROM openjdk:11
-  WORKDIR /app
-  COPY src /app/src
-  RUN javac -d . src/com/example/app/App.java
-  CMD ["java", "com.example.app.App"]


Step 4: Build the Docker image
- Open a terminal or command prompt and navigate to the project directory
-  docker build -t myjavaapp .

Step 5: Run the Docker container
-  After the image is built successfully, run the following command to start a container: docker run myjavaapp

Step 6: Clean up
-  To stop the running container, press Ctrl+C in the terminal or command prompt where the container is running.
-  Optionally, you can remove the container and the image using the following commands:
-  docker rm <container_id>
-  docker rmi myjavaapp


