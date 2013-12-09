require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'protobuf::package_cpp' do
  include Helpers::Protobuf

  it 'installs protobuf C++ packages' do
    protobuf_packages_cpp.each do |p|
      package(p).must_be_installed
    end
  end
end
