class people::chris::applications::gems {

  notify { 'class people::chris::applications::gems declared': }

  $version = "2.2.0"

  ruby::gem {
    "sass for ${version}":
      gem           => 'sass',
      ruby_version  => $version,
      version       => '~> 3.4.13';
  }

}