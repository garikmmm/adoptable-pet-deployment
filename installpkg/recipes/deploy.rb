#
#    curl -s https://getcomposer.org/installer | php
#
node[:deploy].each do |application, deploy|
  script "install_composer" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current"
    code <<-EOH
    php composer.phar install --no-dev --no-interaction --optimize-autoloader
    EOH
    only_if { ::File.exists?("#{deploy[:deploy_to]}/current/composer.json") }
  end
end
