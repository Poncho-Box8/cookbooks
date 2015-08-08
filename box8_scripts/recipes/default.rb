include_recipe 'deploy'
node[:deploy].each do |application, deploy|
cookbook_file "../files/script.rb" do
  source "script.rb"
  mode 0755
end
execute "script.rb" do
  cwd "#{deploy[:deploy_to]}/current/config"  
  command "./script.rb"
end
end
