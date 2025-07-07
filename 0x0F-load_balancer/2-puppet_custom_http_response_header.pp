class custom_http_header {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure     => running,
    enable     => true,
    subscribe  => File['/etc/nginx/sites-available/default'],
  }

  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => template('custom_http/default.erb'),
    notify  => Service['nginx'],
  }
}
