# This Puppet manifest installs Nginx and adds a custom HTTP header "X-Served-By" with the server's hostname

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => inline_template(@("EOF")),
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        add_header X-Served-By "<%= @hostname %>";
        try_files \$uri \$uri/ =404;
    }
}
  | EOF
  ,
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}

# Get the hostname fact to use in the template
$hostname = $facts['networking']['hostname']
