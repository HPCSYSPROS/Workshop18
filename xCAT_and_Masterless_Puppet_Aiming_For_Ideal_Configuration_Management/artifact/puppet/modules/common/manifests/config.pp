class common::config {
    File {
        owner => root,
        group => root,
    }

    # manage host keys
    file { "/etc/ssh/ssh_host_ed25519_key.pub":
        ensure => present,
        mode   => "0444",
        source => "puppet:///modules/common/etc/ssh/ssh_host_ed25519_key.pub",
    }

    $key_ed25519 = hiera('ssh_host_ed25519_key')
    file { "/etc/ssh/ssh_host_ed25519_key":
        ensure  => present,
        group   => "ssh_keys",
        mode    => "0600",
        content => "$key_ed25519\n",
    }

    file { "/etc/ssh/ssh_host_rsa_key.pub":
        ensure => present,
        mode   => "0444",
        source => "puppet:///modules/common/etc/ssh/ssh_host_rsa_key.pub",
    }

    $key_rsa = hiera('ssh_host_rsa_key')
    file { "/etc/ssh/ssh_host_rsa_key":
        ensure  => present,
        group   => "ssh_keys",
        mode    => "0600",
        content => "$key_rsa\n",
    }

    file { "/etc/ssh/ssh_host_dsa_key":
        ensure => absent,
    }
    file { "/etc/ssh/ssh_host_dsa_key.pub":
        ensure => absent,
    }
}
