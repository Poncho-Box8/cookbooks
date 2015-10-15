cookbook_file "/tmp/deployer.sh" do
  source "deployer.sh"
  mode 0755
end

execute "install my lib" do
  command "sh /tmp/deployer.sh"
end
