class common::eyaml {
    # This class is simply to set up the eyaml backend for Hiera
    File {
        owner => "root",
        group => "root",
    }

    file { "/etc/eyaml":
        ensure => directory,
    }->
    file { "/etc/eyaml/config.yaml":
        ensure => present,
        mode   => "0444",
        source => "puppet:///modules/common/etc/eyaml/config.yaml",
    }
}
