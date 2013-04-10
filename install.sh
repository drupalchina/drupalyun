#!/usr/bin/env bash

DOMAIN="drupalyun.com"
PWD=`pwd`

cd $PWD/html

# Install
drush si drupalyun \
	--db-url=mysql://root:admin@localhost:3306/drupalyun_com \
	--account-name=admin \
	--account-pass=admin \
	--site-mail=drupalyun@drupalyun.com \
	--locale=zh-hans \
	--site-name=DrupalYun \
	--sites-subdir=$DOMAIN \
	-y

# Clean
cd -
chmod -R 755 $PWD/html/sites/$DOMAIN
