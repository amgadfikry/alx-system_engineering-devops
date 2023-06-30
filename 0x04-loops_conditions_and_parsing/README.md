# 0x04-loops_conditions_and_parsing

### Requirements

- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 20.04 LTS
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- You are not allowed to use awk
- Your Bash script must pass Shellcheck (version 0.7.0) without any error
- The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
- The second line of all your Bash scripts should be a comment explaining what is the script doing

---

### Tasks:

#### 0-RSA_public_key.pub
You will soon have to manage your own servers concept page hosted on remote data centers. We need to set them up with your RSA public key so that you can access them via SSH.

Create a RSA key pair.

Requirements:

- Share your public key in your answer file 0-RSA_public_key.pub
- Fill the SSH public key field of your intranet profile with the public key you just generated
- Keep the private key to yourself in a secure location, you will use it later to connect to your servers using SSH. Some storing ideas are Dropbox, Google Drive, password manager, USB key. Failing to do so will prevent you to access your servers, which will prevent you from doing your projects
- If you decide to add a passphrase to your key, make sure to save this passphrase in a secure location, you will not be able to use your keys without the passphrase

#### 1-for_best_school
Write a Bash script that displays Best School 10 times.

Requirement:

- You must use the for loop (while and until are forbidden)

#### 2-while_best_school
Write a Bash script that displays Best School 10 times.

Requirements:

- You must use the while loop (for and until are forbidden)

#### 3-until_best_school
Write a Bash script that displays Best School 10 times.

Requirements:

- You must use the until loop (for and while are forbidden)

#### 4-if_9_say_hi
Write a Bash script that displays Best School 10 times, but for the 9th iteration, displays Best School and then Hi on a new line.

Requirements:

- You must use the while loop (for and until are forbidden)
- You must use the if statement

#### 5-4_bad_luck_8_is_your_chance
Write a Bash script that loops from 1 to 10 and:

- displays bad luck for the 4th loop iteration
- displays good luck for the 8th loop iteration
- displays Best School for the other iterations
Requirements:

- You must use the while loop (for and until are forbidden)
- You must use the if, elif and else statements

#### 6-superstitious_numbers
Write a Bash script that displays numbers from 1 to 20 and:

- displays 4 and then bad luck from China for the 4th loop iteration
- displays 9 and then bad luck from Japan for the 9th loop iteration
- displays 17 and then bad luck from Italy for the 17th loop iteration
Requirements:

- You must use the while loop (for and until are forbidden)
- You must use the case statement

#### 7-clock
Write a Bash script that displays the time for 12 hours and 59 minutes:

- display hours from 0 to 12
- display minutes from 1 to 59
Requirements:

- You must use the while loop (for and until are forbidden)

#### 8-for_ls
Write a Bash script that displays:

- The content of the current directory
- In a list format
- Where only the part of the name after the first dash is displayed (refer to the example)
Requirements:

- You must use the for loop (while and until are forbidden)
- Do not display hidden files

#### 9-to_file_or_not_to_file
Write a Bash script that gives you information about the school file.

Requirements:

- You must use if and, else (case is forbidden)
- Your Bash script should check if the file exists and print:
-- if the file exists: school file exists
-- if the file does not exist: school file does not exist
- If the file exists, print:
-- if the file is empty: school file is empty
-- if the file is not empty: school file is not empty
-- if the file is a regular file: school is a regular file
-- if the file is not a regular file: (nothing)

#### 10-fizzbuzz
Write a Bash script that displays numbers from 1 to 100.

Requirements:

- Displays FizzBuzz when the number is a multiple of 3 and 5
- Displays Fizz when the number is multiple of 3
- Displays Buzz when the number is a multiple of 5
- Otherwise, displays the number
- In a list format

#### 100-read_and_cut
Write a Bash script that displays the content of the file /etc/passwd.

Your script should only display:

- username
- user id
- Home directory path for the user
Requirements:

- You must use the while loop (for and until are forbidden)

#### 101-tell_the_story_of_passwd
The file /etc/passwd has already been covered in a previous project and you should be familiar with it. Today we will make up a story based on it.

Write a Bash script that displays the content of the file /etc/passwd, using the while loop + IFS.

Format: The user USERNAME is part of the GROUP_ID gang, lives in HOME_DIRECTORY and rides COMMAND/SHELL. USER ID's place is protected by the passcode PASSWORD, more info about the user here: USER ID INFO

Requirements:

- You must use the while loop (for and until are forbidden)

#### 102-lets_parse_apache_logs
Write a Bash script that displays the visitor IP along with the HTTP status code from the Apache log file.

Requirement:

- Format: IP HTTP_CODE
-- in a list format
-- See example
- You must use awk
- You are not allowed to use while, for, until and cut
- Download and commit the [apache-access.log file](https://intranet-projects-files.s3.amazonaws.com/holbertonschool-sysadmin_devops/80/apache-access.log) along with your answers files

#### 103-dig_the-data
Using what you did in the previous exercise, write a Bash script that groups visitors by IP and HTTP status code, and displays this data.

Requirements:

- The exact format must be:
-- OCCURENCE_NUMBER IP HTTP_CODE
-- In list format
- Ordered from the greatest to the lowest number of occurrences
-- See example
- You must use awk
- You are not allowed to use while, for, until and cut
