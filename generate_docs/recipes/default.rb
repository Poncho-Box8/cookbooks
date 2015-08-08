include_recipe 'deploy'
node[:deploy].each do |application, deploy|
bash "generate_docs" do
  user "root"
  code <<-EOH
    cd "#{deploy[:deploy_to]}/current/config"
    bundle exec rake swagger:docs RAILS_ENV=production
  EOH
end
end
