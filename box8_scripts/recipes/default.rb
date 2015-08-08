cookbook_file "/root/code/cookbooks/box8_scripts/files/script.rb" do
  source "script.rb"
  mode 0755
end




execute "script.rb" do
  cwd "/tmp"
  command "./script.rb"
end
