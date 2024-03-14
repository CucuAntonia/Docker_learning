The steps for solving task number 1.

1. Install Docker Desktop
2. I pulled the ubuntu image from hub.docker.com (https://hub.docker.com/_/ubuntu)

![Ubuntu](/task1/Screenshots/ubuntu.png)

![Pull](/task1/Screenshots/pull.png) 

3. I started the container based on the ubuntu image

![Start](/task1/Screenshots/start.png) 

4. I created the john user inside the container

![User](/task1/Screenshots/user.png) 

5. I exited the container and I copied the create_large_file.sh into the Linux container.

![Copy](/task1/Screenshots/copy.png) 

6. I ran the script. 

![Error](/task1/Screenshots/error.png) 

There was an error due to a sintax error. I corrected the script and ran it once again. 

![Modified](/task1/Screenshots/modif.png)

![Run](/task1/Screenshots/run_script.png)

7. Inside the container, I used the following commands:
	- apt-get update
	- apt-get install nano
	- apt-get install curl
	
With these commands, I can solve the next exercises. 

8. I created an empty file and open the file using a editor in cmd.

Commands:
   * touch actions_script.sh
   * nano actions_script.sh
	
9. I solved the exercises

NOTE: The actions_script.sh should be into the container!

10. I checked the results to see if my implementation works.

![Res1](/task1/Screenshots/working.png)
![Res2](/task1/Screenshots/working2.png)
![Res3](/task1/Screenshots/ex7.png)

11. I copied the actions_script.sh from the container to my task1 folder.

![Copy2](/task1/Screenshots/copy2.png)

