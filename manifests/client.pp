# manifests/client.pp

class rsync::client {
    package{'rsync':
        ensure => installed,
    }
}
