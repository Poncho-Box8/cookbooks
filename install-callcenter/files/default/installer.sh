cd /srv/www/statc_app/current/ && bower install --allow-root --config.interactive=false
cd /srv/www/statc_app/current/ && npm install
cd /srv/www/statc_app/current/ && grunt 
rm -rfv /opt/tmp_store/
mkdir /opt/tmp_store/
cp -r /srv/www/statc_app/current/* /opt/tmp_store/
rm -rfv /srv/www/statc_app/current/*
rm -rfv /srv/www/statc_app/current/.*
cp -r /opt/tmp_store/dist/* /srv/www/statc_app/current/
cp -r /opt/tmp_store/app/fonts/* /srv/www/statc_app/current/fonts/
cp -r /opt/tmp_store/bower_components/font-awesome/fonts/* /srv/www/statc_app/current/fonts/
cd /srv/www/statc_app/current/ && chown deploy:www-data /srv/www/statc_app/current/*