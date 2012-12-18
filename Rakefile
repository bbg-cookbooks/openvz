require 'net/ssh'
require 'net/scp'

namespace "vagrant" do

  USER = PASSWORD = 'vagrant'
  HOSTS = {
    'openvz' => '127.0.0.1'
  }

  task "fix"do
    #`vagrant ssh --command 'sudo yum install -y vzkernel-devel'`
    #`vagrant ssh --command "sudo /etc/init.d/vboxadd setup"`
    Net::SSH.start(HOSTS['openvz'], USER, :password => PASSWORD, :port => 2222) do |ssh|
      ssh.exec "sudo yum install -y vzkernel-devel"
      ssh.loop
      ssh.exec "sudo /etc/init.d/vboxadd setup"
      ssh.loop
    end

    sh('vagrant reload')
  end
end

task :default => :spec do
  sh "rspec spec/*"
  sh "foodcritic ."
end
