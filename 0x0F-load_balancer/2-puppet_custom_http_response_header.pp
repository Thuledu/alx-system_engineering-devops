#!/usr/bin/env bash
# Custom HTTP header response in server

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define custom HTTP header response
$hostname = $facts['hostname']
$custom_header = "add_header X-Served-By ${hostname};"

# Add custom header to Nginx configuration
file { '/etc/nginx/server.headers':
  ensure  => present,
  content => "location / { ${custom_header} }",
  notify  => Service['nginx'],
}

# Notify Nginx service to restart when the configuration changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => File['/etc/nginx/server.headers'],
}

