class people::ckelly::files (
  $my_sourcedir   = $people::ckelly::params::my_sourcedir,
  $my_homedir     = $people::ckelly::params::my_homedir,
  $my_username    = $people::ckelly::params::my_username
) {

  file { "${my_homedir}/bin":
    ensure  => directory,
  }

  file { "${my_homedir}/dev/src":
    ensure  => directory,
  }

  file { "${my_homedir}/dev/testboxen":
    ensure  => directory,
  }


}