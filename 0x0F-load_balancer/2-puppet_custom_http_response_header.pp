# pupprt manifest to automate scripts

package { 'nginx':
  ensure => installed,
}

file_line { 'header_var':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  line   => "add_header X-Served-By $hostname;",
  after  => 'rewrite ^/redirect_me https://www.youtube.com permanent;',

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
