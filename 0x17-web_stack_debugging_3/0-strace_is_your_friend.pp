# manifest to fix error in server
exec { 'fix_extentions':
  path    => ['/usr/bin', '/bin'],
  command => "sed -i 's/.phpp/.php/g' /var/www/html/wp-settings.php"
}
