# 1. Print the home directory

print_home_dir() {
	echo "Home directory: $HOME"
}

# 2. List all usernames from the passwd file

print_usernames() {
	echo "Usernames:"
	cut -d: -f1 /etc/passwd
}

# 3. Count the number of users

print_number_of_users() {
	echo "Number of users: $(wc -l < /etc/passwd)"
}

# 4. Find the home directory of a specific user (prompt to enter the username value)

find_home_dir(){
	read -p "Enter the username to find home directory: " username
	user_home=$(grep "^$username:" /etc/passwd | cut -d: -f6)
	echo "Home directory of $username: $user_home"
}

# 5. List users with specific UID range (e.g. 1000-1010)

print_users_UID(){
	read -p "Enter the UID range (e.g. 1000-1010): " uid_range
	echo "Users with UID in range $uid_range:"
	awk -v range="$uid_range" -F: '$3 >= (split(range, a, "-")[1]) && $3 <= (split(range, a, "-")[2]) { print $1 }' /etc/passwd

}

# 6. Find users with standard shells like /bin/bash or /bin/sh
users_with_standard_shells(){
	echo "Users with standard shells (/bin/bash or /bin/sh):"
	grep -E "/bin/(bash|sh)" /etc/passwd | cut -d: -f1
}

# 7. Replace the “/” character with “\” character in the entire /etc/passwd file and redirect thecontent to a new file

replace(){
	sed 's/\//\\/g' /etc/passwd > /tmp/passwd_backup
}

# 8. Print the private IP

print_privateIP() {
	echo "Private IP:"
	hostname -I | cut -d' ' -f1
}

# 9. Print the public IP

print_publicIP(){
	echo "Public IP:"
	curl -s ifconfig.me
}

# 10. Switch to john user

switch_user() {
	su - john
}

# 11. Print the home directory
print_home_dir

