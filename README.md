# chef-protobuf [![Build Status](https://secure.travis-ci.org/bflad/chef-protobuf.png?branch=master)](http://travis-ci.org/bflad/chef-protobuf)

## Description

Installs [Protocol Buffer](https://code.google.com/p/protobuf/) C++, Java, and Python libraries. [protobuf-c](https://code.google.com/p/protobuf-c/) (for C support) is a separate project and is not included in this cookbook. Please see [COMPATIBILITY.md](COMPATIBILITY.md) for more information about protobuf versions that are tested and supported by cookbook versions.

## Requirements

### Platforms

* CentOS 6
* Fedora 18, 19, 20
* RHEL 6
* Ubuntu 12.04, 12.10, 13.04, 13.10

### Cookbooks

[Opscode Cookbooks](https://github.com/opscode-cookbooks/)

* [apt](https://github.com/opscode-cookbooks/apt)
* [build-essential](https://github.com/opscode-cookbooks/build-essential)
* [yum](https://github.com/opscode-cookbooks/yum)

## Attributes

These attributes are under the `node['protobuf']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
install_type | Installation type for protobuf ("archive" or "package") | String | "package"

### Archive Attributes

These attributes are under the `node['protobuf']['archive']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
checksum | SHA256 checksum for archive | String | auto-detected (see attributes/default.rb)
install_dir | Installation prefix | String | /usr/local
url | Archive URL | String | `https://protobuf.googlecode.com/files/protobuf-#{node['protobuf']['archive']['version']}.tar.bz2`
version | Archive version to install | String | 2.5.0

### Package Attributes

These attributes are under the `node['protobuf']['package']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
cpp_packages | C++ packages for installation | Array of Strings | auto-detected (see attributes/default.rb)
java_packages | Java packages for installation | Array of Strings | auto-detected (see attributes/default.rb)
python_packages | Python packages for installation | Array of Strings | auto-detected (see attributes/default.rb)

## Recipes

* `recipe[protobuf]` Installs Protocol Buffer
* `recipe[protobuf::archive]` Installs protobuf via archive
* `recipe[protobuf::package]` Installs protobuf via package
* `recipe[protobuf::package_cpp]` Installs protobuf C++ packages
* `recipe[protobuf::package_java]` Installs protobuf Java packages
* `recipe[protobuf::package_python]` Installs protobuf Python packages

## Usage

### Default Installation

Defaults to installing all packages and handling apt/yum::epel dependencies.

* Add `recipe[protobuf]` to your node's run list

### Archive Installation

* If necessary, set `node['protobuf']['archive']['version']` and `node['protobuf']['archive']['checksum']`
* Set `node['protobuf']['install_type']` to "archive" or add `recipe['protobuf::archive']` to your node's run list

### All Packages Installation

The default for this cookbook. Handles apt/yum::epel dependencies for you.

* Add `recipe['protobuf::package']` to your node's run list

### C++ Package Installation Only

Don't forget to handle any necessary apt/yum::epel dependencies.

* Add `recipe['protobuf::package_cpp']` to your node's run list

### Java Package Installation Only

Don't forget to handle any necessary apt/yum::epel dependencies.

* Add `recipe['protobuf::package_java']` to your node's run list

### Python Package Installation Only

Don't forget to handle any necessary apt/yum::epel dependencies.

* Add `recipe['protobuf::package_python']` to your node's run list

## Testing and Development

### Vagrant

Here's how you can quickly get testing or developing against the cookbook thanks to [Vagrant](http://vagrantup.com/) and [Berkshelf](http://berkshelf.com/).

    vagrant plugin install vagrant-berkshelf
    vagrant plugin install vagrant-cachier
    vagrant plugin install vagrant-omnibus
    git clone git://github.com/bflad/chef-protobuf.git
    cd chef-protobuf
    vagrant up BOX # BOX being centos6, ubuntu1204, ubuntu1210, or ubuntu1304

You can then SSH into the running VM using the `vagrant ssh BOX` command.

The VM can easily be stopped and deleted with the `vagrant destroy` command. Please see the official [Vagrant documentation](http://docs.vagrantup.com/v2/cli/index.html) for a more in depth explanation of available commands.

### Test Kitchen

Please see documentation in: [TESTING.md](TESTING.md)

## Contributing

Please use standard Github issues/pull requests and if possible, in combination with testing on the Vagrant boxes or Test Kitchen suite.

## Maintainers

* Brian Flad (<bflad417@gmail.com>)
