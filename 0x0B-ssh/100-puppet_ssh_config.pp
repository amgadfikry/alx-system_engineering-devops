# change ssh config file
exec { 'Turn off passwd auth':
  path    => [ '/usr/bin', '/bin' ],
  command => 'sed -i "s/PasswordAuthentication yes/PasswordAuthentication no" /etc/ssh/ssh_config'
}
exec { 'Declare identity file'}:
  path    => [ '/usr/bin', '/bin' ],
  command => 'sed -i "/PasswordAuthentication no/a IdentityFile ~/.ssh/school" /etc/ssh/ssh_config'
}
