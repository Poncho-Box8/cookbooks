include_recipe 'deploy'
kafka_api = node[:deploy]['box8_api'][:environment_variables][:KAFKA_API]
node[:deploy].each do |application, deploy|
bash "generate_docs" do
  user "root"
  cwd "#{deploy[:deploy_to]}/current/"
  code <<-EOH
    bundle exec rake swagger:docs RAILS_ENV=production
    /usr/bin/pkill -f kafka_reader.rb
    export KAFKA_API=#{kafka_api} 
    bundle exec ruby kafka_reader_controller.rb start
  EOH
end
end
