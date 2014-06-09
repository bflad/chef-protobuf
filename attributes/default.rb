default['protobuf']['install_type'] = nil

# Source attributes
default['protobuf']['archive']['install_dir'] = '/usr/local'
default['protobuf']['archive']['version'] = '2.5.0'
default['protobuf']['archive']['url'] = "https://protobuf.googlecode.com/files/protobuf-#{node['protobuf']['archive']['version']}.tar.bz2"
default['protobuf']['archive']['checksum'] =
  case node['protobuf']['archive']['version']
  when '2.5.0' then '13bfc5ae543cf3aa180ac2485c0bc89495e3ae711fc6fab4f8ffe90dfb4bb677'
  end

# Package attributes
default['protobuf']['package']['cpp_packages'] = value_for_platform(
  %w(centos fedora redhat) => {
    'default' => %w(protobuf protobuf-devel protobuf-compiler)
  },
  %w(ubuntu) => {
    %w(12.04 12.10 13.04 13.10) => %w(libprotobuf7 libprotobuf-dev protobuf-compiler),
    'default' => %w(libprotobuf8 libprotobuf-dev protobuf-compiler)
  }
)
default['protobuf']['package']['java_packages'] = value_for_platform(
  %w(centos fedora redhat) => {
    'default' => %w(protobuf-compiler)
  },
  %w(ubuntu) => {
    'default' => %w(libprotobuf-java protobuf-compiler)
  }
)
default['protobuf']['package']['python_packages'] = value_for_platform(
  %w(centos fedora redhat) => {
    'default' => %w(protobuf-python protobuf-compiler)
  },
  %w(ubuntu) => {
    'default' => %w(python-protobuf protobuf-compiler)
  }
)
