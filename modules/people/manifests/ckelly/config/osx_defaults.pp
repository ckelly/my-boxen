# OSX defaults module
class people::ckelly::config::osx_defaults {

  include osx::finder::show_all_on_desktop
  include osx::no_network_dsstores
  include osx::software_update

  include osx::global::tap_to_click
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  include osx::finder::show_all_filename_extensions

  include osx::safari::enable_developer_mode

  class { 'osx::global::key_repeat_delay':
    delay => 30
  }

  class { 'osx::dock::hot_corners':
    top_right => "Application Windows",
    top_left => "Desktop"
    bottom_left => "Put Display To Sleep"
  }

  osx::recovery_message { 'Hard drive is encrypted. If this Mac is found, please call 508-904-8403': }
}