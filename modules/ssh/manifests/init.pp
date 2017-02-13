class ssh inherits ssh::parameters {
  
  package { 'openssh-pack' :
       name => 'openssh',
       ensure => present,
    }


  file { '/etc/ssh/sshd_config':
       ensure => file,
       owner  => 'root',
       group  => 'root',
       require => Package['openssh-pack'],
       source  => 'puppet:///modules/ssh/sshd_config',
       notify => Service['ssh-serv'], 
}

  service { 'ssh-serv':
      name  => $ssh_name,
      ensure => running,
      enable => true,
    #  subscribe => File['/etc/ssh/sshd_config'],
   }

}
