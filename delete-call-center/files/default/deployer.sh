rm -rfv /opt/tmp_store
mkdir /opt/tmp_store
cp -r /srv/www/static_app/current/* /opt/tmp_store
cd /opt/tmp_store
bower install —allow-root
npm install
grunt
rm -rfv /srv/www/static_app/current/*
cp -r /opt/tmp_store/dist/* /srv/www/static_app/current/
cp -r /srv/www/statc_app/current/app/fonts/* /srv/www/statc_app/current/dist/fonts/
cp -r /srv/www/statc_app/current/bower_components/font-awesome/fonts/* /srv/www/statc_app/current/dist/fonts/

