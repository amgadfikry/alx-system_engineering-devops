# change ssh config file
file { 'Turn off passwd auth':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no'
}
file { 'Declare identity file'}:
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school'
}
