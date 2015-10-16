cookbook_file "/tmp/delete.sh" do
  source "delete.sh"
  mode 0755
end

execute "install my lib" do
  command "sh /tmp/delete.sh"
end
