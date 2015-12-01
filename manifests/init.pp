# This is a placeholder class.
class janus {

  exec {'Install Janus':
    command => '/usr/bin/curl -Lo- https://bit.ly/janus-bootstrap | /bin/bash',
    creates => "/Users/${::boxen_user}/.vim/Rakefile",
    timeout => 600
  }

  file {"/Users/${::boxen_user}/.janus":
    ensure => directory
  }
}
