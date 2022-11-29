#!bin/bash
# Computer Science, full time, 1st cycle, 3rd semester, 2022/2023


#EXERCISE 01 COMMANDS 
#Exersise 01.1 --> find the largest file (regular file, not a directory) in /usr directory.
$ find   /usr  -type f -printf '%s %p\n'|sort -nr|head #It will gives largerst files names in a particular directory and its sub directories
$ find  /usr  -type f -size +100M #this command will give larger than 100MB files.
$  du -a /usr | sort -n -r | head -n 1 

#Exercise 01.2  -->  find the latest modified file in /tmp directory.
$ find /tmp  -type f -printf '%T@ %p\n' \ | sort -n | tail -1 | cut -f2- -d" " #%T@ will give modification time, sort -n for sorting, tail -1 for taking last line as highest timestamp 

$ find /tmp -printf "%A@ %f \n" | sort | tail

#Exercise 01.3 --> find the number of the subdirectories in /var directory.
$ find /var -type d | wc -l 

#Exercise 01.4 --> Archive and compress all files from /bin directory starting with ‘a’ letter.
$ tar -zcvf ~/Desktop/archive.tar.gz /usr/bin 
