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
bash(0)>  grep -c "GET" access.log

# The file split-me.txt contains a list of
# numbers separated by a ';' character.
# Split the numbers on the ';' character,
# one number per line.
#
bash(0)> tr ';' '\n' < split-me.txt

# Print the numbers 1 to 100 separated
# by spaces.
#
bash(0)> echo $(seq 1 100)

# There are files in this challenge with
# different file extensions.
# Remove all files with the .doc extension
# recursively in the current working directory.
#
bash(0)> rm **/*.doc

# This challenge has text files (with a .txt extension)
# that contain the phrase "challenges are difficult".
# Delete this phrase recursively from all text files.
# Note that some files are in subdirectories so you will
# need to search for them.
#
bash(0)> sed -i 's/challenges are difficult//g' **/*.txt

# The file sum-me.txt has a list of numbers,
# one per line. Print the sum of these numbers.
#
bash(0)> paste -sd+ sum-me.txt | bc

# Print all files in the current directory
# recursively without the leading directory path.
#
bash(0)> find -type f -printf '%f\n'

# Rename all files removing the extension from
# them in the current directory recursively.
#
bash(0)> 
