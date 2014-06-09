# Helpers module
module Helpers
  # Helpers::Protobuf module
  module Protobuf
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    def protobuf_packages_cpp
      case node['platform']
      when 'centos', 'fedora', 'redhat'
        %w(protobuf protobuf-devel protobuf-compiler)
      when 'ubuntu'
        return %w(libprotobuf7 libprotobuf-dev protobuf-compiler) if %w(12.04 12.10 13.04 13.10).include?(node['platform_version'])
        %w(libprotobuf8 libprotobuf-dev protobuf-compiler)
      end
    end

    def protobuf_packages_java
      case node['platform']
      when 'centos', 'fedora', 'redhat'
        %w(protobuf-compiler)
      when 'ubuntu'
        %w(libprotobuf-java protobuf-compiler)
      end
    end

    def protobuf_packages_python
      case node['platform']
      when 'centos', 'fedora', 'redhat'
        %w(protobuf-python protobuf-compiler)
      when 'ubuntu'
        %w(python-protobuf protobuf-compiler)
      end
    end
  end
end
