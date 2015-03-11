#Install the Chef server
package_chef_server_url = node['enterprise-chef']['url']
package_chef_server_name = ::File.basename(package_chef_server_url)
package_chef_server_local_path = "#{Chef::Config[:file_cache_path]}/#{package_chef_server_name}"

#omibus_package is remote (ie a URL) let's download it
remote_file package_chef_server_local_path do
  source package_chef_server_url
end

package package_chef_server_local_path do
  source package_chef_server_local_path
  provider Chef::Provider::Package::Rpm
  notifies :run, 'execute[reconfigure-chef-server]', :immediately
end

##reconfigue the installation
execute 'reconfigure-chef-server' do
  command 'chef-server-ctl reconfigure'
  action :nothing
end