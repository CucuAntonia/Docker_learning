The steps for solving task number 3. 

1. I pulled the mysql image from hub.docker.com (https://hub.docker.com/_/mysql)

![Sql](/task3/Screenshots/mysql.png)

![Pull](/task3/Screenshots/docker_pull.png)

2. I created a MYSQL container, using the following command in command prompt:
docker run --name task3-sql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql

![Container](/task3/Screenshots/container.png)
	- docker run - create and start a new container
	- --name task3-sql - specify a custom name for the container
	- -p 3306:3306 - maps a port from the host machine to a port inside the container
	- -e MYSQL_ROOT_PASSWORD=my-secret-pw - sets the MySQL root user's password to "my-secret-pw"
	- -d - runs the container in the background
	- mysql - specify the name of the Docker image that will be used

3. I opened MYSQL Workbench and I connected to my container running in Docker

![Connection](/task3/Screenshots/local.png)

4. I created a new schema - "company"
5. I imported and executed the company.sql file into my company database
6. I created a user and assigned all the permissions required for the database "company" (check the new-user.sql file)

![User](/task3/Screenshots/user.png)

7. I created a new SQL file to calculate the avarege salary (check avg-salary.sql file)

![Result](/task3/Screenshots/result.png)

To create a volume I used this command: docker volume create task3-volume
To run a container with the volume attached use: docker run --name task3-vol -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -v task3-volume -d mysql
To check if it worked use: docker inspect 6b6a50fbd9c1def999f38d47ea599ce33a94c79dd5cff9502450c33444576f18 (replace with your container_id)

![Volume](/task3/Screenshots/volume.png)

