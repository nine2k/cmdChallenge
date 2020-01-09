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
bash(0)> for f in $(find . -type f -name "*.*"); do mv "$f" "${f%.*}"; done

# The files in this challenge contain spaces.
# List all of the files (filenames only) in the
# current directory but replace all spaces with
# a '.' character.
#
bash(0)>  ls | tr ' ' '.'

# In this challenge there are some directories containing files
# with different extensionas. Print all directories,
# one per line without duplicates that contain
# one or more files with a ".tf" extension.
#
bash(0)> dirname **/*tf|uniq

# There are a mix of files in this directory
# that start with letters and numbers. Print
# the filenames (just the filenames) of all
# files that start with a number recursively
# in the current directory.

bash(0)> ls -RF|grep ^[0-9].*[^/]$

# Print the 25th line of the file faces.txt
#
bash(0)>  sed -n '25p' faces.txt

# Print the lines of the README file in this directory in
# reverse line order so that the last line is printed first
# and the first line is printed last.
# ~~~~~~~~~~~~~~~~~~~~~
# In the future
# Environmental destruction will be the norm
# No longer can it be said that
# My peers and I care about this earth
# It will be evident that
# My generation is apathetic and lethargic
# It is foolish to presume that
# There is hope
# ~~~~~~~~~~~~~~~~~~~~~
# -Jonathan Reed "The Lost Generation"
#
bash(0)> tac README

# Print the file faces.txt, but only print the first instance of each
# duplicate line, even if the duplicates don't appear next to each other.
# Note that order matters so don't sort the lines before removing duplicates.
#
bash(0)>  awk '!x[$0]++' faces.txt

# The file "table.csv" contains the following comma-separated lines:
# id,name,count
# 4,susan,11
# 33,alice,22
# 1772,joe,33
#
# Print the rows as a table, like the following:
# id    name   count
# 4     susan  11
# 33    alice  22
# 1772  joe    33
#
bash(0)> cat table.csv | column -t -s","

# The file random-numbers.txt contains a list
# of 100 random integers. Print the number of
# unique prime numbers contained in the file.
#
bash(0)> sort -u r*|factor|grep -Pcv '\d '

# The following excerpt from War and Peace is saved to
# the file 'war_and_peace.txt':
#
# She is betraying us! Russia alone must save Europe.
# Our gracious sovereign recognizes his high vocation
# and will be true to it. That is the one thing I have
# faith in! Our good and wonderful sovereign has to
# perform the noblest role on earth, and he is so virtuous
# and noble that God will not forsake him. He will fulfill
# his vocation and crush the hydra of revolution, which
# has become more terrible than ever in the person of this
# murderer and villain!
#
# The file however has been corrupted, there are random '!'
# marks inserted throughout.  Print the original text.
#
bash(0)> sed -n 7,15s/..//p *
