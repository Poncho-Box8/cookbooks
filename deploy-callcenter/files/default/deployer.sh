cd /srv/www/statc_app/current
bower install —allow-root
npm install
grunt
cp -r /srv/www/statc_app/current/dist/* /srv/www/statc_app/current
cp -r /srv/www/statc_app/current/app/fonts/* /srv/www/statc_app/current/dist/fonts
cp -r /srv/www/statc_app/current/bower_components/font-awesome/fonts/* /srv/www/statc_app/current/app/
