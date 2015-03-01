class people::chris {
  include people::chris::params
  include people::chris::files

  #include people::chris::applications:main
  #include people::chris::applications:gems
  
  #include people::chris::config::dotfiles
  #include people::chris::config::osx_defaults
  #include people::chris::config::sublime
  #include people::chris::config::python_dev


}

