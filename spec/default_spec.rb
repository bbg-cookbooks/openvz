require 'chefspec'

describe 'openvz::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'openvz::default' }
  it 'should include each recipe' do
    chef_run.should include_recipe 'openvz::repo'
    chef_run.should include_recipe 'openvz::install'
    chef_run.should include_recipe 'openvz::services'
    chef_run.should include_recipe 'openvz::sysctl'
  end
end
