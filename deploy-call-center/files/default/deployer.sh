cd /srv/www/callcenter/current && chown -R root:root *
cd /srv/www/callcenter/current && bower install --allow-root --config.interactive=false
cd /srv/www/callcenter/current && npm install
cd /srv/www/callcenter/current && grunt 
rm -rfv /opt/tmp_store/
mkdir /opt/tmp_store/
cp -r /srv/www/callcenter/current/* /opt/tmp_store/
rm -rfv /srv/www/callcenter/current/* 
rm -rfv /srv/www/callcenter/current/.*
cp -r /opt/tmp_store/dist/* /srv/www/callcenter/current/
cp -r /opt/tmp_store/app/fonts/* /srv/www/callcenter/current/fonts/
cp -r /opt/tmp_store/bower_components/font-awesome/fonts/* /srv/www/callcenter/current/fonts/
chown deploy:www-data /srv/www/callcenter/current/*