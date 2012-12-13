require 'chefspec'

describe 'openvz::services' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'openvz::services' }
  it 'should enable the vz service' do
    chef_run.should enable_service "vz"
  end

  it 'should enable the vzeventd service' do
    chef_run.should enable_service "vzeventd"
  end
end
