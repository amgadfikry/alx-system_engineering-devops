# puppet manifest for install package
package { 'nginx':
  ensure   => 'installed',
  provider => 'apt_get'
}

file { '/var/www/html/index.html':
  ensure  => 'present',
  content => 'Hello World!'
}

file_line { 'config':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => '/server_name _;',
  line   => 'rewrite ^/(.*)$ http://www.youtube.com permanent;'
}

service { 'nginx':
  ensure => 'running',
}
