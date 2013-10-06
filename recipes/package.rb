include_recipe "apt" if node['platform'] == "ubuntu"
include_recipe "yum::epel" if node['platform_family'] == "rhel"

include_recipe "protobuf::package_cpp"
include_recipe "protobuf::package_java"
include_recipe "protobuf::package_python"
