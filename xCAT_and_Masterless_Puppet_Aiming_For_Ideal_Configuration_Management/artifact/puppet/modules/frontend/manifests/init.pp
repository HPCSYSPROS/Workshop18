class frontend {
    class { 'frontend::packages': }->
    class { [ 
                'frontend::config'
            ]:
    }

    exec { "daemon-reload":
        command     => "/usr/bin/systemctl daemon-reload",
        refreshonly => true,
    }
}
