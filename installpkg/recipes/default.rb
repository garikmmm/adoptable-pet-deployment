package 'php5-redis' do
  action :install
end

package 'php5-intl' do
  action :install
end

execute 'service apache2 restart' do
end
