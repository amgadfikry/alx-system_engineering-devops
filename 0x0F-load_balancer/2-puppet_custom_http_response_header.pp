# puppet manifest that add header variable to nginx response

package { 'nginx':
  ensure => installed,
}

file_line { 'redirect':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => '\trewrite ^/(.*)$ http://www.youtube.com permanent;\n\tadd_header X-Served-By $hostname;',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
