cd /srv/www/call_center_app/current/ && chown -R root:root *
cd /srv/www/call_center_app/current/ && bower install --allow-root --config.interactive=false
cd /srv/www/call_center_app/current/ && npm install
cd /srv/www/call_center_app/current/ && grunt 
rm -rfv /opt/tmp_store/
mkdir /opt/tmp_store/
cp -r /srv/www/call_center_app/current/* /opt/tmp_store/
rm -rfv /srv/www/call_center_app/current/*
rm -rfv /srv/www/call_center_app/current/.*
cp -r /opt/tmp_store/dist/* /srv/www/call_center_app/current/
cp -r /opt/tmp_store/app/fonts/* /srv/www/call_center_app/current/fonts/
cp -r /opt/tmp_store/bower_components/font-awesome/fonts/* /srv/www/call_center_app/current/fonts/
chown deploy:www-data /srv/www/call_center_app/current/*
