Vagrant.configure("2") do |config|
  config.vm.box = "alvaro/bionic64"

  config.vm.define "consul" do |consul|
    consul.vm.hostname = "consul"
    consul.vm.network "private_network", ip: "192.168.56.20", netmask:"255.255.0.0"
    consul.vm.network "forwarded_port", guest: 8500, host: 8500 # consul

    # consul server
    consul.vm.provision "shell",
      path: "https://raw.githubusercontent.com/kikitux/curl-bash/master/consul-1server/consul.sh"

  end

  config.vm.define "vault" do |vault|
    vault.vm.hostname = "vault"
    vault.vm.network "private_network", ip: "192.168.56.30", netmask:"255.255.0.0"
    vault.vm.network "forwarded_port", guest: 8200, host: 8200 # vault


    # consul client
    vault.vm.provision "shell",
      path: "https://raw.githubusercontent.com/kikitux/curl-bash/master/consul-client/consul.sh"

    # vault in dev mode
    vault.vm.provision "shell", 
      path: "https://raw.githubusercontent.com/kikitux/curl-bash/master/vault-dev/vault.sh"

    # configure
      vault.vm.provision "shell", path: "scripts/provision.sh"

  end

end
