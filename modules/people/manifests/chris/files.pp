class people::chris::files (
  $my_sourcedir   = $people::chris::params::my_sourcedir,
  $my_homedir     = $people::chris::params::my_homedir,
  $my_username    = $people::chris::params::my_username
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