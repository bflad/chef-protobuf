name 'protobuf'
maintainer 'Brian Flad'
maintainer_email 'bflad417@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures Protocol Buffer'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.2.0'

recipe 'protobuf', 'Installs Protocol Buffer'
recipe 'protobuf::archive', 'Installs protobuf via archive'
recipe 'protobuf::cpp', 'Installs protobuf C++'
recipe 'protobuf::java', 'Installs protobuf Java'
recipe 'protobuf::package_cpp', 'Installs protobuf C++ packages'
recipe 'protobuf::package_java', 'Installs protobuf Java packages'
recipe 'protobuf::package_python', 'Installs protobuf Python packages'
recipe 'protobuf::python', 'Installs protobuf Python'

%w(centos fedora redhat ubuntu).each do |os|
  supports os
end

%w(apt build-essential yum yum-epel).each do |cb|
  depends cb
end
