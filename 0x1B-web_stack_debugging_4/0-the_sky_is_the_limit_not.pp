# Increases the amount of traffic an Nginx server 
exec { 'fixit':
  command  => 'sed -i s/15/4096/g /etc/default/nginx; sudo service nginx restart',
  provider => 'shell'
}

