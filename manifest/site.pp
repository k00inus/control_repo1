node default {
  file { '/root/README':
  ensure => file,
  content => "Welcome to ${fqdn}\n",
  }
}
node puppet.local {
  include role::master
  file {'/etc/secret_password.txt':
    ensure => file,
    content => lookup('secret_password'),
  }
}
