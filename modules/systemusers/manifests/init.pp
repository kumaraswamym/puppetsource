class systemusers {

   user { 'admin' :

      ensure => present,
      shell  => '/bin/bash',
      home   => '/home/admin',
      groups    => [ 'sudoers','root'],
      managehome => true,
      password => 'admin123',
    }
  user { 'kumar' :

      ensure => present,
      shell  => '/bin/bash',
      home   => '/home/kumar',
      groups    => [ 'sudoers','root'],
      managehome => true,
      password => 'kumar123',
    }


  group { 'sudoers':
     ensure => present,
  }
}
