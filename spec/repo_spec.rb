require 'chefspec'

describe 'openvz::repo' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'openvz::repo' }
  it 'add the openvz repo' do
    chef_run.should create_remote_file "/etc/yum.repos.d/openvz.repo"
    chef_run.remote_file('/etc/yum.repos.d/openvz.repo').should be_owned_by('root', 'root')
  end
end
