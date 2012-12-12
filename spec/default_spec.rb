require 'chefspec'

describe 'openvz/::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'openvz/::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
