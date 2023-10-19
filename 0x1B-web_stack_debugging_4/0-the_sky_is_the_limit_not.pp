#puppet manifest ti fix limit of file open in nginx web server
exec { 'change limit':
  path    => ['/usr/local/bin/', '/bin/', '/usr/bin/'],
  command => "sudo sed -i 's/15/4000/g' /etc/default/nginx; sudo service nginx restart"
}
