# change ssh config file
include 'ssh::client'
ssh::client::host_config_entry { '*':
  PasswordAuthentication => no
  IdentityFile           => ~/.ssh/school
}
