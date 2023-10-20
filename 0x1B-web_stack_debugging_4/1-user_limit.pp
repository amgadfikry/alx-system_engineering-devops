# puppet manifest fix open file limit
exec { 'fix_hard':
  path    => ['/usr/local/bin/', '/bin/', '/usr/bin/'],
  command => "sudo sed -i 's/holberton hard nofile 5/holberton hard nofile 1000/' /etc/security/limits.conf",
}
exec { 'fix_soft':
  path    => ['/usr/local/bin/', '/bin/', '/usr/bin/'],
  command => "sudo sed -i 's/holberton soft nofile 4/holberton hard nofile 1000/' /etc/security/limits.conf; sudo sysctl -p"
}
