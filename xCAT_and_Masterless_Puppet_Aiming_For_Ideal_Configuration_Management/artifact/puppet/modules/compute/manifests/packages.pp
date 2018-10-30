class compute::packages {
    # This is an ultra minimalist example
    package {
        # Install Node Health Check
        "lbnl-nhc":
            ensure => present;
    }
}
