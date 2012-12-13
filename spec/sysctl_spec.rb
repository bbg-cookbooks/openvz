require 'chefspec'

describe 'openvz::sysctl' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'openvz::sysctl' }
  it 'should set the sysctl settings' do
    chef_run.should execute_command "sysctl -w net.ipv4.ip_forward=1"
  end
end
