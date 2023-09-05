# puppet manifest that add header variable to nginx response

package { 'nginx':
  ensure => installed,
}

file_line { 'append a line in nginx config file':
  path  => '/etc/nginx/nginx.conf'
  line  => "\tadd_header X-Served-By ${hostname};",
  after => 'server_name _;'
}
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
