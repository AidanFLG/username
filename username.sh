#! /bin/bash
# username.sh
# Aidan Lewis-Grenz
echo "Enter a username"
echo "Use lower case characters, digits and underscore"
echo "It must start with a lower case character"
echo "It must contain at least 3 but not more than 12 characters"
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - starting with a lower case letter, 3-12 characters, and only using lower case letters, digits, and underscores!"
	echo "Enter a valid username: "
	read USERNAME
done
echo "Thank you"
