# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.define "master" do |sm|
        config.vm.provider "docker" do |d|
            d.image = "salt-master:development"
            d.privileged = true
            d.ports = ["4505:4505", "4506:4506"]
            d.force_host_vm = false
            d.volumes = ["/sys/fs/cgroup:/sys/fs/cgroup:ro"]
        end
    end

end
