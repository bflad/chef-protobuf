require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'protobuf::package_java' do
  include Helpers::Protobuf

  it 'installs protobuf Java packages' do
    protobuf_packages_java.each do |p|
      package(p).must_be_installed
    end
  end
end
