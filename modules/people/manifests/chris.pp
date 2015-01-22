class people::chris {

  include dropbox
  include chrome
  include java
  include firefox
  include vlc
  include spotify
  include sublime_text
  include wget
  include zsh

  #  class { 'intellij':
  #    edition => 'ultimate',
  #     version => '13.1.1'
  #  }

  #include virtualbox
  #include vagrant

  #
  # Remove services we don't want
  #
  #service {"dev.nginx":
  #    ensure => "stopped",
  #}

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
}

