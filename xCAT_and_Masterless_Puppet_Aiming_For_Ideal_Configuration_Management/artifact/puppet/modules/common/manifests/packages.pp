class common::packages {
    file { "/etc/yum.conf":
        # Block all 32-bit/i686 packages
        ensure => present,
        mode   => "0644",
        source => "puppet:///modules/common/etc/yum.conf",
    }->
    package {
        # Ultra minimalist example package list
        "git":
            ensure => present;
    }->
    file { "/usr/bin/pip-python":
        ensure => link,
        target => "/usr/bin/pip",
    }->
    package { "hiera-eyaml":
        ensure   => "present",
        provider => "gem",
    }
}
