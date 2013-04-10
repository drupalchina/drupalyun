#!/usr/bin/env bash

if [ "$1" == "" ]; then
	WORKSPACE="html"
fi

if [ "$2" == "" ]; then
	DOMAIN="drupalyun.com"
fi


# Running drush
echo "###############################################"
echo "# Running Drush ..."
echo "###############################################"
# NOTICE: It would delete all things in workspace. 
# So that plase make sure backup everything before build.
if [ -d $WORKSPACE ]; then
	rm -rf $WORKSPACE
fi
drush make drupalyun.make $WORKSPACE
echo "###############################################"
echo "# Drush done."
echo "###############################################"

# Prepare folder
echo "###############################################"
echo "# Preparing folder"
echo "###############################################"

DIRECTORIES="$WORKSPACE/sites/$DOMAIN $WORKSPACE/sites/$DOMAIN/files $WORKSPACE/sites/$DOMAIN/modules $WORKSPACE/sites/$DOMAIN/themes"

for dir in $DIRECTORIES
do
	echo -ne "Creating directory $dir\n"
	if [ -d $dir ]; then
		rm -rf $dir
		mkdir $dir
	else
		mkdir $dir
	fi
	chmod -R 755 $dir
done

# Prepare enviroment
echo "################################################"
echo "# Preparing enviroment"
echo "################################################"
chmod 777 "$WORKSPACE/sites/$DOMAIN/files"
cp "$WORKSPACE/sites/default/default.settings.php" "$WORKSPACE/sites/$DOMAIN/settings.php"
chmod 777 "$WORKSPACE/sites/$DOMAIN/settings.php"

# Copy our install profiles into core
ln -s `pwd`"/drupalyun" "$WORKSPACE/profiles/"

# sites.php
cp -Rp "$WORKSPACE/sites/example.sites.php" "$WORKSPACE/sites/sites.php"

# Echo our domain into sites.php
echo -ne "Editing file sites.php"
echo '$sites["'$DOMAIN'"]="'$DOMAIN'";' >> "$WORKSPACE/sites/sites.php"

echo "Install by runing install.sh"

echo "################################################"
echo "# Preparing enviroment done"
echo "################################################"


