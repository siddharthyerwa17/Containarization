# Containarization
 Creating and Uploading a Docker Image with Ubuntu and Python 3 to Docker Hub using Windows CMD

Step 1: Create the Dockerfile

Create a new directory for your Docker project.
Inside the project directory, create a new file called Dockerfile. This file will define the steps to build the Docker image.

FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
RUN update-alternatives --config python
WORKDIR /app
CMD ["python", "--version"]


Step 2: Build the Docker image
-  Open the Windows Command Prompt (CMD) and navigate to the project directory using the cd command.
-  Run the following command to build the Docker image: docker build -t my-ubuntu-python-image .


Step 3: Run the Docker container
-  After the image is built successfully, run the following command to start a container: docker run my-ubuntu-python-image
-  You should see the output showing the Python version installed inside the Docker container.

Step 4: Upload the Docker image to Docker Hub
-  Log in to Docker Hub using the following command: docker login "username"
-  Tag the Docker image with your Docker Hub username/repository: docker tag my-ubuntu-python-image "your-dockerhub-username"/ubuntu-python-image:latest
-  Replace your-dockerhub-username with your actual Docker Hub username.
-  Push the Docker image to Docker Hub: docker push "your-dockerhub-username"/ubuntu-python-image:latest

Step 5: Verify the uploaded image
-  Go to your Docker Hub profile and navigate to your repository to verify that the image has been uploaded successfully.






