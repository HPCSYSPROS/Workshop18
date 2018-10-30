class frontend::packages {
    # This is an ultra minimalist example
    package {
        # Install Mosh (The MObile SHell)
        'mosh':
            ensure => present;
    }
}
