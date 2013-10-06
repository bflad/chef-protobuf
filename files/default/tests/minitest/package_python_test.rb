require File.expand_path('../support/helpers', __FILE__)

describe_recipe "protobuf::package_python" do
  include Helpers::Protobuf

  protobuf_packages_python.each do |p|
    it "installs #{p} package" do
      package(p).must_be_installed
    end
  end
end
