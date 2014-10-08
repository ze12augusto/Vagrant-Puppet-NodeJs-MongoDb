Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

include stdlib
include apt
include wget
include ssh::client
include mongodb::server
include npm-packages

file { '/home/vagrant/project':
   ensure => 'link',
   target => '/vagrant',
}