class people::ckelly {
  include people::ckelly::params
  include people::ckelly::files

  #include people::ckelly::applications::main
  include people::ckelly::applications::gems
  
  include people::ckelly::config::osx_defaults
  #include people::ckelly::config::dotfiles
  #include people::ckelly::config::sublime
  #include people::ckelly::config::python_dev

}

