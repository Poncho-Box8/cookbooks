include_recipe 'deploy'
bash "generate_docs" do
  user "root"
  cwd "#{deploy[:deploy_to]}/current/config"
  code <<-EOH
    bundle exec rake swagger:docs RAILS_ENV=production
  EOH
end
