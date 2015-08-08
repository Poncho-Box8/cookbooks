include_recipe 'deploy'
node[:deploy].each do |application, deploy|
cookbook_file "script.sh" do
  source "../files/script.sh"
  mode 0755
end
execute "script.sh" do
  cwd "#{deploy[:deploy_to]}/current/config"  
  command "./script.sh"
end
end
