Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    # Configure guest services to be accessible on host
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.network "forwarded_port", guest: 27017, host: 27017
end
