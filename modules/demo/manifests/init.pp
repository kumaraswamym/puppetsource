class demo {

  file { '/etc/welcome':

        ensure => file,
        content => "this is a first file created by puppet"
        }

   file { '/etc/readme':
        ensure => file,
        owner  => "root",
        group  => "root",
         content => template('demo/test.erb'),
        mode   => "0755",
      }


}
