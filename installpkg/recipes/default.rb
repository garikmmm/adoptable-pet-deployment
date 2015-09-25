include_recipe 'apache2::service'

package 'php5-redis' do
  action :install
end

package 'php5-intl' do
  action :install
  notifies :restart, resources(:service => 'apache2')
end

