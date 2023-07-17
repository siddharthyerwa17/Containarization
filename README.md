Step 1: Set up the project structure
- Create a new directory for your project.
- Inside the project directory, create a new file called app.py.
- Dockerfile: This file is used to define the steps to build the Docker image. It specifies the base image, sets the working directory, copies the necessary files, installs dependencies, and sets the command to run the application.
- requirements.txt: This file contains the list of Python dependencies required for your web application. You can add any necessary libraries or packages to this file. The pip install command in the Dockerfile will install these dependencies.
Content of requirements.txt: Flask==2.0.1
Step 2: Build the Docker image
-Create a new file called Dockerfile inside the project directory. This file will define the steps to build the Docker image.
Step 3: Build the Docker image
- Open a terminal or command prompt and navigate to the project directory.
- Run the following command to build the Docker image: docker build -t mywebapp .
Step 4: Run the Docker container
- docker run -d -p 5000:5000 mywebapp
Step 5: Test the web application
- Open a web browser and visit http://localhost:5000. You should see the web application running.
Step 6: Cleanup
- To stop the running container, use the following command: docker stop <container_id>
- Note: To get the container ID, you can use the docker ps command.


Optionally, you can remove the container and the image using the following commands:
- docker rm <container_id>
- docker rmi mywebapp
- Building and Deploying a Java Application with Docker

The objective of this assignment is to familiarize yourself with Docker by building and deploying a simple Java application inside a Docker container.



