module Helpers
  module Protobuf
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    def protobuf_packages_cpp
      value_for_platform(
        %w{centos fedora redhat} => {
          "default" => %w{protobuf protobuf-devel protobuf-compiler}
        },
        %w{ubuntu} => {
          "default" => %w{libprotobuf7 libprotobuf-dev protobuf-compiler}
        }
      )
    end

    def protobuf_packages_java
      value_for_platform(
        %w{centos fedora redhat} => {
          "default" => %w{protobuf-compiler}
        },
        %w{ubuntu} => {
          "default" => %w{libprotobuf-java protobuf-compiler}
        }
      )
    end

    def protobuf_packages_python
      value_for_platform(
        %w{centos fedora redhat} => {
          "default" => %w{protobuf-python protobuf-compiler}
        },
        %w{ubuntu} => {
          "default" => %w{python-protobuf protobuf-compiler}
        }
      )
    end
  end
end
