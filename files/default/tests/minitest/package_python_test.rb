require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'protobuf::package_python' do
  include Helpers::Protobuf

  it 'installs protobuf Python packages' do
    protobuf_packages_python.each do |p|
      package(p).must_be_installed
    end
  end
end
