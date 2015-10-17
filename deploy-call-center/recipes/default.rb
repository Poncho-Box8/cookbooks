cookbook_file "/tmp/deployer.sh" do
  source "deployer.sh"
  mode 0755
end

execute "Deploy my app" do
  command "sh /tmp/deployer.sh"
end
