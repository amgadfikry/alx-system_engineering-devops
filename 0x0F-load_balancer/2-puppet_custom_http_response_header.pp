# puppet manifest that add header variable to nginx response
file_line { 'variable_header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => 'add_header X-Served-By $hostname;'
}
