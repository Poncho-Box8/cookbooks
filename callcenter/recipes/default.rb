include recipe apt 
package 'nginx' do
  action :install
end
service 'nginx' do
  action [ :enable, :start ]
end
cookbook_file "/etc/nginx/sites-available/default" do
  source "default"
  mode "0644"
end
package 'git' do 
  action :install
end
package 'nodejs' do
  action :install
end
link '/usr/bin/node' do
  to '/usr/bin/nodejs'
end
package 'npm' do
  action :install
end
execute 'update_npm' do
  command 'npm install npm -g'
end
execute 'install_yo' do
  command 'npm install -g yo'
end
execute 'install_bower' do
  command 'npm install -g bower'
end
execute 'install_grunt' do
  command 'npm install -g grunt'
end
execute 'install_grunt_cli' do
  command 'npm install -g grunt-cli'
end
