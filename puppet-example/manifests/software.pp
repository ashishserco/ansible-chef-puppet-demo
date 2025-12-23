# Ensure Git is installed
package { 'git':
  ensure => installed,
}

# Ensure a configuration file exists
file { '/tmp/puppet_managed_config.conf':
  ensure  => file,
  content => 'This file is managed by Puppet',
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}

# Notify the user
notify { 'Puppet has successfully configured this node.': }
