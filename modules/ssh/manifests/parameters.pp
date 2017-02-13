class ssh::parameters { 


  $ssh_name = $osfamily ? {

     'RedHat' => 'sshd',
     'Debian' => 'ssh',
    default   => 'OS not supported this sshd module',
 }


}
