# a restriced rsync shell
class rsync::rrsync {
  include rsync::client

  file{'/usr/local/bin/rrsync':
    source  => 'puppet:///modules/rsync/rrsync/rrsync',
    require => Package['rsync'],
    owner   => root,
    group   => 0,
    mode    => '0755';
  }
}
