apt-get update -y
apt-get install nodejs
ln -s /usr/bin/nodejs /usr/bin/node
apt-get install npm -y
npm install npm -g
apt-get install git nginx -y
npm install npm -g  cd /usr/local/lib/node_modules
curl registry.npmjs.com/npm/-/npm-2.12.0.tgz |tar xz --transform="s:^package:npm:"
npm i npm -g
npm install -g yo
npm install -g bower
npm install -g grunt 
npm install -g grunt-cli

