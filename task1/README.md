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

Here are some information about the functions from actions_script.sh script:

check_privileges() - checks if the user ID (EUID) is not equal to 0. The EUID of 0 indicates that the script is being run as the root user

read_passwd_file() - uses cat to display the information from the passwd file

check_file_name()  - defines the file path to be checked and checks if the file exists using the -f flag 

print_home_dir()   - uses echo and $HOME variable to print the home directory

print_usernames()  - uses cut to extract the first field of each line. -d: fields in the file are separated by colons

print_number_of_users() - counts the number of lines in the "/etc/passwd" file. -l flag specifies that only the total number of lines should be counted

find_home_dir():
- enter a username and stores the input in the username variable.
- searches for the specified username followed by a colon (:)
- extracts the sixth field (represents the home directory) 
- assign the output to the user_home variable and print 

print_users_UID() - not working!

users_with_standard_shells() - searches for lines in the file, -E flag enables extended regular expressions, and "/bin/(bash|sh)" matches either "/bin/bash" or "/bin/sh"
					
replace() - uses sed to perform a global search, replace the caracthers and store the output into the "/tmp/passwd_backup" file

print_privateIP() - retrieves the list of IP addresses. Pipe (|) is used to redirect the output to another command. The second command uses cut to extract the first field (-f1) of each line

print_publicIP() - fetches the public IP address from "ifconfig.me" using curl

switch_user() - uses su to start the shell of the target user (john)