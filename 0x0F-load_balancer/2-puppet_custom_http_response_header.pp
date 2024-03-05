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
file_line { 'custom_header':
  path  => '/etc/nginx/sites-available/default',
  line  => $custom_header,
  match => 'server_name _;',
}

# Notify Nginx service to restart when the configuration changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => File_line['custom_header'],
}
