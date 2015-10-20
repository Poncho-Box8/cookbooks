cookbook_file "/tmp/installer.sh" do
  source "installer.sh"
  mode 0755
end

execute "Install Call center" do
  command "sh /tmp/installer.sh"
end
