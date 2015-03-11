#Install the opscode-manage web frontend.  Execute 'opscode-manage-ctl reconfigure'
package_opscode_manage_url = node['opscode-manage']['url']
package_opscode_manage_name = ::File.basename(package_opscode_manage_url)
package_opscode_manage_local_path = "#{Chef::Config[:file_cache_path]}/#{package_opscode_manage_name}"

remote_file package_opscode_manage_local_path do
  source package_opscode_manage_url
end

package package_opscode_manage_local_path do
  source package_opscode_manage_local_path
  provider Chef::Provider::Package::Rpm
  notifies :run, 'execute[reconfigure-opscode-manage-ctl]', :immediately

end

execute 'reconfigure-opscode-manage-ctl' do
  command 'opscode-manage-ctl reconfigure'
  action :nothing
end