cd /srv/www/sample_static_app/current && chown -R root:root *
cd /srv/www/sample_static_app/current && bower install --allow-root --config.interactive=false
cd /srv/www/sample_static_app/current && npm install
cd /srv/www/sample_static_app/current && grunt 
rm -rfv /opt/tmp_store/
mkdir /opt/tmp_store/
cp -r /srv/www/sample_static_app/current/* /opt/tmp_store/
rm -rfv /srv/www/sample_static_app/current/* 
rm -rfv /srv/www/sample_static_app/current/.*
cp -r /opt/tmp_store/dist/* /srv/www/sample_static_app/current/
cp -r /opt/tmp_store/app/fonts/* /srv/www/sample_static_app/current/fonts/
cp -r /opt/tmp_store/bower_components/font-awesome/fonts/* /srv/www/sample_static_app/current/fonts/
chown deploy:www-data /srv/www/sample_static_app/current/*
