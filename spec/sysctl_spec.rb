require 'chefspec'

describe 'openvz::sysctl' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'openvz::sysctl' }
  it 'should set the sysctl settings' do
    chef_run.should create_file '/etc/sysctl.d/openvz'
  end
end
