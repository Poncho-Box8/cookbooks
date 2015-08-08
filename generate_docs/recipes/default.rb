execute “docs_generate" do
  user “deploy"
  cwd "#{deploy[:deploy_to]}/current”
  command "bundle exec rake swagger:docs RAILS_ENV=production”
end

