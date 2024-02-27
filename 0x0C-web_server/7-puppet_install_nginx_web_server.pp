#!/usr/bin/env bash
# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx server
file { '/etc/nginx/sites-available/redirect_me':
  ensure  => present,
  content => "server {
    listen 80;
    server_name _;
    return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
  }",
}

# Create a symbolic link to enable the new configuration
file { '/etc/nginx/sites-enabled/redirect_me':
  ensure => link,
  target => '/etc/nginx/sites-available/redirect_me',
  notify => Service['nginx'],
}

# Create a custom 404 error page
file { '/usr/share/nginx/html/404.html':
  ensure  => present,
  content => "Ceci n'est pas une page",
}

# Update the Nginx configuration to use the custom 404 error page
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "error_page 404 /404.html;",
  notify  => Service['nginx'],
}

# Restart Nginx service
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => [File['/etc/nginx/sites-enabled/redirect_me'], File['/etc/nginx/sites-available/default']],
}

