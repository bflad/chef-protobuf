require File.expand_path('../support/helpers', __FILE__)

describe_recipe "protobuf::package_cpp" do
  include Helpers::Protobuf

  protobuf_packages_cpp.each do |p|
    it "installs #{p} package" do
      package(p).must_be_installed
    end
  end
end
