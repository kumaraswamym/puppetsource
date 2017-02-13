class demo::variables {

  $localvariable = "789"
  $nodevariable = "700"  
  $topvariable = "705"
 notify { "${topvariable} is top scope varaible": }
 notify { "${nodevariable} is node scope varaible": }
 notify { "${localvariable} is class scope varaible": }

}
