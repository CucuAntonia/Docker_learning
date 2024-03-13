The steps for solving task number 2. 

1. I opened the 2-simpleapp folder from the link provided and I downloaded app.py file. I put the file into my task2 folder.

2. Into the task2 folder I created a Dockerfile to containerize the application. 
Explanations:
- Use a docker image for Python (from Docker Hub)
- Set the working directory 
- Copy app.py file into the container
- Install dependencies (if needed)
- Expose the port on which the application will run 
- Define the command which will run the application

3. I used docker build -t task2 . to build the image locally
-> docker build --> build the docker image
-> -t task2     --> specify the name of the docker image 
-> .            --> it means that the Dockerfile is in the current directory

4. I logged into my account and I created a repository on Docker Hub

5. I configured my environment variables for sensitive information. Steps:
- Open Github repository
- Click on Settings
- Click on Secrets and Variables -> Actions
- Click on "New repository secret" 
- At name I typed "DOCKERHUB_USERNAME" and the Secret is my Docker Hub username 
  (idem for password)
- I created a .github/workflows folder into my task2 folder and I pushed all of my files into the Github repository
- Click on the Actions button (in Github) and click "Set up a new workflow"
- Add the logic to the main.yml file and commit the changes
- Run the yml file

At the end, my image is pushed into the Docker Hub repository.
![Final Result](/Screenshots/final_task2.png)