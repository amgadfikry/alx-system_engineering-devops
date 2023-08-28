# 0x0C-web_server

### Requirements

- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass Shellcheck (version 0.3.7) without any error
- The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
- The second line of all your Bash scripts should be a comment explaining what is the script doing
- You can’t use systemctl for restarting a process

---

### tasks:

#### 0-transfer_file
Write a Bash script that transfers a file from our client to a server:

Requirements:

- Accepts 4 parameters
-- The path to the file to be transferred
-- The IP of the server we want to transfer the file to
-- The username scp connects with
-- The path to the SSH private key that scp uses
- Display Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY if less than 3 parameters passed
- scp must transfer the file to the user home directory ~/
- Strict host key checking must be disabled when using scp
