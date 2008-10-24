# manifests/rrsync.pp

class rsync::rrsync {
    include rsync::client

    file{'/usr/local/bin/rrsync':
        source => "puppet://$server/rsync/rrsync/rrsync",
        require => Package['rsync'],
        owner => root, group => 0, mode => 0755;
    }
}
