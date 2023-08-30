# puppet manifest for install package
package { 'nginx':
  ensure   => 'installed',
  provider => 'apt_get'
}

exce { 'run_nginx':
  path    => [ '/usr/bin', '/bin'],
  command => 'sudo service nginx start'
}

file { '/var/www/html/index.html':
  ensure  => 'present',
  path    => '/var/www/html/index.html',
  content => 'Hello World!',
  mode    => '0777'
}

exce { 'redirct':
  path    => [ '/usr/bin', '/bin'],
  command => 'sudo sed -i "/server_name _;/a \\\trewrite ^/(.*)$ http://www.youtube.com permanent;" /etc/nginx/sites-available/default'
}

exce { 'reload_nginx':
  path    => [ '/usr/bin', '/bin'],
  command => 'sudo service nginx reload'
}
