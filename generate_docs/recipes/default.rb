bash "generate_docs" do
  user "root"
  cwd "/srv/www/box8_api/current"
  code <<-EOH
    bundle exec rake swagger:docs RAILS_ENV=production
  EOH
end
