module Helpers
  module Protobuf
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    def protobuf_packages_cpp
      case node['platform']
      when "centos", "fedora", "redhat"
        %w{protobuf protobuf-devel protobuf-compiler}
      when "ubuntu"
        %w{libprotobuf7 libprotobuf-dev protobuf-compiler}
      end
    end

    def protobuf_packages_java
      case node['platform']
      when "centos", "fedora", "redhat"
        %w{protobuf-compiler}
      when "ubuntu"
        %w{libprotobuf-java protobuf-compiler}
      end
    end

    def protobuf_packages_python
      case node['platform']
      when "centos", "fedora", "redhat"
        %w{protobuf-python protobuf-compiler}
      when "ubuntu"
        %w{python-protobuf protobuf-compiler}
      end
    end
  end
end
