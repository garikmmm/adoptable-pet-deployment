package 'php5-redis' do
  action :install
end

package 'php5-intl' do
  action :install
end

include_recipe 'apache2::service'

execute 'trigger apache2 service restart' do
  notifies :restart, resources(:service => 'apache2')
end
