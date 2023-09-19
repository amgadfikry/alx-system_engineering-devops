# 0x12-web_stack_debugging_2

### Requirements
- All your files will be interpreted on Ubuntu 20.04 LTS
- All your files should end with a new line
- A README.md file at the root of the folder of the project is mandatory
- All your Bash script files must be executable
- Your Bash scripts must pass Shellcheck without any error
- Your Bash scripts must run without error
- The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
- The second line of all your Bash scripts should be a comment explaining what is the script doing

--- 
### tasks

#### 0-iamsomeoneelse
For the containers that you are given in this project as well as the checker, everything is run under the root user, which has the ability to run anything as another user.

Requirements:

- write a Bash script that accepts one argument
- the script should run the whoami command under the user passed as an argument
- make sure to try your script by passing different users

#### 1-run_nginx_as_nginx
Fix this container so that Nginx is running as the nginx user.

Requirements:

- nginx must be running as nginx user
- nginx must be listening on all active IPs on port 8080
- You cannot use apt-get remove
- Write a Bash script that configures the container to fit the above requirements

#### 100-fix_in_7_lines_or_less
Using what you did for task #1, make your fix short and sweet.

Requirements:

- Your Bash script must be 7 lines long or less
- There must be a new line at the end of the file
- You respect Bash script requirements
- You cannot use ;
- You cannot use &&
- You cannot use wget
- You cannot execute your previous answer file (Do not include the name of the previous script in this one)
