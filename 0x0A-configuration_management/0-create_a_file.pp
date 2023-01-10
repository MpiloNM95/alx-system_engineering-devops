# create a file
file { 'school':
  path    => '/tmp/school',
  mode    => '0744',
  content => 'I love Puppet',
  group   => 'www-data',
  owner   => 'www-data',
}
