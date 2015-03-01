class people::chris::config::dotfiles {
  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  repository { $dotfiles:
    source => 'ckelly/dotfiles',
  }
}

$my_home  = "/Users/${::luser}"
$projects = "${my_home}/dev/src"

file { $projects:
	ensure => directory,
}

$dotfiles = "${projects}/dotfiles"

repository { $dotfiles:
  source  => 'ckelly/dotfiles',
  require => File[$projects],
  notify  => Exec['ckelly-make-dotfiles'],
}

exec { 'ckelly-make-dotfiles':
  command     => "cd ${dotfiles} && make",
  refreshonly => true,
}