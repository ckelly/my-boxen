class people::chris::applications::gems {

  notify { 'class people::chris::applications::gems declared': }

  $version = "2.1.2"

  ruby::gem {
    "sass for ${version}":
      gem           => 'sass',
      ruby_version  => $version,
      version       => '~> 3.4.13';
  }

}