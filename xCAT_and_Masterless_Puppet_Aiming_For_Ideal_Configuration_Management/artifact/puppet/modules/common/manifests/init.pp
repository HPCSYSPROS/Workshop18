class common {
    class { 'common::packages': }->
    class { [
              'common::config',
              'common::eyaml'
            ]:
    }

    exec { "daemon-reload":
        command     => "/usr/bin/systemctl daemon-reload",
        refreshonly => true,
    }
}
