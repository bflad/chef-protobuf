include_recipe 'build-essential'

remote_file "#{Chef::Config[:file_cache_path]}/protobuf-#{node['protobuf']['archive']['version']}.tar.bz2" do
  source node['protobuf']['archive']['url']
  checksum node['protobuf']['archive']['checksum']
  mode '0644'
  action :create_if_missing
end

execute "Extracting protobuf #{node['protobuf']['archive']['version']}" do
  cwd Chef::Config[:file_cache_path]
  command "tar -jxf protobuf-#{node['protobuf']['archive']['version']}.tar.bz2"
  creates "#{Chef::Config[:file_cache_path]}/protobuf-#{node['protobuf']['archive']['version']}"
end

execute "Installing protobuf #{node['protobuf']['archive']['version']} archive" do
  cwd "#{Chef::Config[:file_cache_path]}/protobuf-#{node['protobuf']['archive']['version']}"
  command "./configure --prefix=#{node['protobuf']['archive']['install_dir']} && make && make check && make install"
  creates "#{node['protobuf']['archive']['install_dir']}/bin/protoc"
  action :run
  notifies :run, 'execute[ldconfig]', :immediately
end

execute 'ldconfig' do
  command 'ldconfig'
  action :nothing
end
