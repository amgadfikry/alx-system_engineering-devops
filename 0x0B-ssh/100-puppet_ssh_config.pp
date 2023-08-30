# change ssh config file
file { '/etc/ssh/ssh_config':
  ensure  => 'present',
  content => '# Managed by Puppet\n
               Host *\n
               PasswordAuthentication no\n
               IdentityFile ~/.ssh/school\n',
}
