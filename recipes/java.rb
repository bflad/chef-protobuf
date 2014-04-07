case node['protobuf']['install_type']
when 'archive'
  include_recipe 'protobuf::archive'
when 'package'
  include_recipe 'protobuf::package_java'
else
  protobuf_recipe = value_for_platform(
    %w(centos redhat) => {
      'default' => 'archive'
    },
    %w(fedora) => {
      'default' => 'package_java'
    },
    %w(ubuntu) => {
      'default' => 'package_java'
    }
  )

  include_recipe "protobuf::#{protobuf_recipe}"
end
