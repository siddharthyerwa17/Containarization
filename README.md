# Containarization
Simple file upload on docker

Step 1: Set up the project structure
Create a new directory for your project.
Inside the project directory, create a new file called app.py. This will be a simple Python web application.
project-directory: This is the main directory for your project. It contains all the necessary files for building and running the Docker container.
app.py:

Step 2: Build the Docker image
Create a new file called Dockerfile inside the project directory. This file will define the steps to build the Docker image.

Step 3: Build the Docker image
Open a terminal or command prompt and navigate to the project directory.
Run the following command to build the Docker image:docker build -t mywebapp .

Step 4: Run the Docker container
After the image is built successfully, run the following command to start a container:docker run -d -p 5000:5000 mywebapp

Step 5: Test the web application
Open a web browser and visit http://localhost:5000. You should see the web application running.


