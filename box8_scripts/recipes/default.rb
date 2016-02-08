include_recipe 'deploy'
kafka_api = node[:deploy]['box8_api'][:environment_variables][:KAFKA_API]
consumer_group = node[:deploy]['box8_api'][:environment_variables][:CONSUMER_GROUP]
status_topic = node[:deploy]['box8_api'][:environment_variables][:STATUS_TOPIC]
receiver_key = node[:deploy]['box8_api'][:environment_variables][:RECEIVER_KEY]


node[:deploy].each do |application, deploy|
bash "generate_docs" do
  user "root"
  cwd "#{deploy[:deploy_to]}/current/"
  code <<-EOH
    bundle exec rake swagger:docs RAILS_ENV=production
    /usr/bin/pkill -f kafka_reader.rb
    KAFKA_API=#{kafka_api} CONSUMER_GROUP=#{consumer_group} STATUS_TOPIC=#{status_topic} RECEIVER_KEY=#{receiver_key} bundle exec ruby kafka_reader_controller.rb start
  EOH
end
end
