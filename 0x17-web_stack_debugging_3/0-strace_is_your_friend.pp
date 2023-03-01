# Puppet program that fixes the code
exec { 'fixit':
  command => 'sed -i s/class-wp-locale.phpp/g /var/www/html/wp-settings.php',
  provider => 'shell'
}
