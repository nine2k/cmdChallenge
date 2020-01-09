# Print "hello world".
# Hint: There are many ways to print text on
# the command line, one way is with the 'echo'
# command.
#
# Try it below and good luck!
#
bash(0)> echo "hello world"

# Print the current working directory.
#
bash(0)> pwd

# List names of all the files in the current
# directory, one file per line.
#
bash(0)> ls -1

# There is a file named "access.log" in the
# current directory. Print the contents.
#
bash(0)> cat access.log

# Print the last 5 lines of "access.log".
#
bash(0)> tail -5 access.log

# There is a file named "access.log" in the
# current working directory. Print all lines
# in this file that contains the string "GET".
#
bash(0)> grep -e "GET" access.log

# How many lines contain tab characters in
# the file named "file-with-tabs.txt" in the
# current directory.
#
bash(0)> grep $'\t' file-with-tabs.txt | wc -l

# Print all files in the current directory,
# one per line (not the path, just the filename)
# that contain the string "500".

bash(0)> grep -l "500" *

# Print the relative file paths, one path
# per line for all filenames that start with
# "access.log" in the current directory.

bash(0)> find . -name 'access.log*'

# Print all matching lines (without the filename
# or the file path) in all files under the current
# directory that start with "access.log" that
# contain the string "500". Note that there are no
# files named "access.log" in the current directory,
# you will need to search recursively.
#
bash(0)> grep -h 500 **/access.log*

# Extract all IP addresses from files
# that start with "access.log" printing one
# IP address per line.
#
bash(0)> grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" **/access.log*

# Delete all of the files in this challenge
# directory including all subdirectories and
# their contents.
#
bash(0)> find . -delete

# Count the number of files in the current
# working directory. Print the number of
# files as a single integer.
#
bash(0)> find -L . -type f | wc -l

# Print the contents of access.log
# sorted.
#
bash(0)>  sort access.log

# Print the number of lines
# in access.log that contain the string
# "GET".
#
bash(0)>  
