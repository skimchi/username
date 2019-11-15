#! /bin/bash
# username.sh
# Steve Kim
echo "Enter a username. Must be either lowercase letters, digits, or underscore character. all letters must be lower case. Must start with a lower case letter and must contain at least 3 but no more than 12 characters in total : "
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - up to 12 characters!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
