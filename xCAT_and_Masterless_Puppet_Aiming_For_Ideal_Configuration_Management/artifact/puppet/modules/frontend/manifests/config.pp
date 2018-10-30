class frontend::config {
    File {
        owner => root,
        group => root,
    }

    # run Puppet after the system has finished booting
    file { "/usr/site/rcac/sbin/run_puppet":
        ensure => present,
        mode   => "0550",
        source => "puppet:///modules/frontend/usr/site/rcac/sbin/run_puppet",
    }->
    file { "/etc/cron.d/puppet":
        ensure => present,
        mode   => "0444",
        source => "puppet:///modules/frontend/etc/cron.d/puppet",
    }->
    file { "/etc/systemd/system/run_puppet.service":
        ensure => present,
        mode   => "0444",
        source => "puppet:///modules/frontend/etc/systemd/system/run_puppet.service",
        notify => Exec["daemon-reload"],
    }->
    service { "run_puppet":
        enable => true,
    }
}
