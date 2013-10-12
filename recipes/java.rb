if node['protobuf']['install_type'] == "archive"
  include_recipe "protobuf::archive"
else
  protobuf_recipe = value_for_platform(
    %w{centos redhat} => {
      "default" => "archive"
    },
    %w{fedora} => {
      "default" => "package_java"
    },
    %w{ubuntu} => {
      "default" => "package_java"
    }
  )

  include_recipe "protobuf::#{protobuf_recipe}"
end
