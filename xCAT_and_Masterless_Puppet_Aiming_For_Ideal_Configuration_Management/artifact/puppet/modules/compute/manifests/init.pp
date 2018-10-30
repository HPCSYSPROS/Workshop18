class compute {
    class { 'compute::packages': }->
    class { [ 
                'compute::config'
            ]:
    }

    exec { "daemon-reload":
        command     => "/usr/bin/systemctl daemon-reload",
        refreshonly => true,
    }
}
