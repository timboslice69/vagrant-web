Vagrant.configure("2") do |config|

    config.vm.define "web" do |web|
	web.vm.box = "ubuntu/trusty64"
	web.vm.synced_folder "web/", "/srv"
	web.vm.hostname = "web"
	web.vm.network "private_network", ip: "10.1.1.3"
	web.vm.provision :shell, path: "provision-web.sh"
    end

end