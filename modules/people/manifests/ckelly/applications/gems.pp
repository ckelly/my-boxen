class people::ckelly::applications::gems {

  notify { 'class people::ckelly::applications::gems declared': }

  include ruby::global

  $ruby_version = hiera('ruby::global::version')

  # Default Ruby Gems
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.7.12',
    ruby_version => '*',
  }

  ruby_gem { 'pry for all rubies':
    gem          => 'pry',
    version      => '~> 0.10.1',
    ruby_version => '*',
  }

  # Gems for default Ruby version

  ruby_gem { "rails for ${ruby_version}":
    gem          => 'rails',
    version      => '~> 4.2.0',
    ruby_version => $ruby_version,
  }

  ruby_gem { "sass for ${ruby_version}":
      gem           => 'sass',
      ruby_version  => $ruby_version,
      version       => '~> 3.4.13',
  }

}