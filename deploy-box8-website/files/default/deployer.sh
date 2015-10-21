cd /srv/www/website_box8/current && chown -R root:root *
cd /srv/www/website_box8/current && bower install --allow-root --config.interactive=false
cd /srv/www/website_box8/current && npm install
cd /srv/www/website_box8/current && grunt 
rm -rfv /opt/tmp_store/
mkdir /opt/tmp_store/
cp -r /srv/www/website_box8/current/ /opt/tmp_store/
rm -rfv /srv/www/website_box8/current/* 
rm -rfv /srv/www/website_box8/current/.*
cp -r /opt/tmp_store/current/dist/* /srv/www/website_box8/current/
chown deploy:www-data /srv/www/website_box8/current/*



