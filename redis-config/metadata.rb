maintainer       "Pranav"
maintainer_email "pranav@box8.in"
license          "MIT"
description      "Generates redis.yml file"

name   'redis-config'
recipe 'redis-config::deploy',    'Generate and deploy redis.yml file'

depends 'deploy'