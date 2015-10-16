git clone -b dev https://github.com/Poncho-Box8/Box8-CallCenter.git
cd Box8-CallCenter
bower install --allow-root
npm install 
grunt
rm -rfv /usr/share/nginx/html/*
cp -r dist/* /usr/share/nginx/html/*
service nginx restart
