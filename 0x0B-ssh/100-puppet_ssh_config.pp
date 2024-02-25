#!/usr/bin/env bash
# Set up client SSH configuration file to connect to a server without typing a password.
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
}
