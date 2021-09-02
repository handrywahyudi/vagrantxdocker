Vagrant.configure("2") do |config|
  config.vm.define "machine" do 
    config.vm.provider "docker" do |d|
       d.build_dir = "."
       d.remains_running = true
       d.has_ssh = true
       d.volumes = ["/Users/mhw/Mine/vagrant-machines/docker/aws:/home/vagrant/.aws"]
    end
  end
end
