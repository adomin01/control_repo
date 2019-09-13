class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => 'present',
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDGmM63eN6a9pYoT0jmwSO24kMpWay/b37JVLbVs2aHgyT/H71D5iPwKyO4tn/Po1sIHjD4JWUMoZEC2tI2tOi0xLCJf7eTEVU8CgdLbQnlcY04vr4PG0yzz+UabC4xrJdXNl5XAg1v87hraRFxI5bU8w1/j2G+7QqutU/DqHIdqsfY1Ze8RQa49P6ZfJ+YbusdOEMV1zEcO610L0LcqkZwjCJD+BJTairZaN2KveEnrHkSQCuvqfFmvqEV3rpR3MKw+JSK9UXgd27HALRnZrwZRwHJyH6lfQcw0bVTstgjEdLhmY268NGA8Rk9Js9LgpRvQgIqfIRGNbmAdy8m5Q+L',
  }
}
