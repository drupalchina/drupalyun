#!/usr/bin/env bash
PACKAGE_NAME="zh-hans.po"
DOMAIN="drupalyun.com"
PWD=`pwd`

download_chinese_language() {
	if [ ! -f $PACKAGE_NAME ]; then
		wget --tries=10 "http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.22.zh-hans.po" -O $PACKAGE_NAME
	fi
}

download_chinese_language

cd $PWD/html

# Install
drush si drupalyun \
	--db-url=mysql://root:admin@localhost:3306/drupalyun_com \
	--account-name=admin \
	--account-pass=admin \
	--site-mail=drupalyun@drupalyun.com \
	--site-name=DrupalYun \
	--sites-subdir=$DOMAIN

cd -

cd $PWD/html/sites/$DOMAIN

# Add and import Chinese language
drush langadd zh-hans
drush langen zh-hans
drush langdef zh-hans
drush langimp zh-hans $PWD/$PACKAGE_NAME --replace

# Clean
rm $PACKAGE_NAME
