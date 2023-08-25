# puppet manifest that exec code

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
  path     => ['/usr/bin', '/bin']
}
