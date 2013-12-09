require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'protobuf::archive' do
  include Helpers::Protobuf

  it 'installs protoc binary' do
    file("#{node['protobuf']['archive']['install_dir']}/bin/protoc").must_exist
  end

end
