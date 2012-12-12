require 'chefspec'

describe 'openvz::install' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'openvz::install' }
  it 'should install the openvz packages' do
    chef_run.node.openvz.yum.packages.each do |pkg|
      chef_run.should install_package pkg
    end
  end
end
