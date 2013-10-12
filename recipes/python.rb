if node['protobuf']['install_type'] == "archive"
  include_recipe "protobuf::archive"
else
  protobuf_recipe = value_for_platform(
    %w{centos fedora redhat} => {
      "default" => "package_python"
    },
    %w{ubuntu} => {
      "default" => "package_python"
    }
  )

  include_recipe "protobuf::#{protobuf_recipe}"
end
