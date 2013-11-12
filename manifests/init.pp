# This is a placeholder class.
class janus {
  require macvim

  exec {'Install Janus':
    command => '/usr/bin/curl -Lo- https://bit.ly/janus-bootstrap | /bin/bash',
    creates => "/Users/${::luser}/.vim/Rakefile",
    timeout => 600
  }

  file{"/Users/$::luser/.janus":
    ensure => directory
  }
}
