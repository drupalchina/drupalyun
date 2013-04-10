#!/usr/bin/env bash
HTML_TMP="html_tmp"

if [ "$1" == "" ]; then
	WORKSPACE="html"
fi

# Running drush
echo "###############################################"
echo "# Running Drush ..."
echo "###############################################"
if [ -d $HTML_TMP ]; then
	rm -rf $HTML_TMP
fi
drush make drupalyun.make --no-core $HTML_TMP
echo "###############################################"
echo "# Drush done."
echo "###############################################"

# Move Contrib modules and themes
MV_DIRECTOREIS="modules libraries themes"
for dir in $MV_DIRECTOREIS;
do
	if [ -d "$HTML_TMP/sites/all/$dir" ]; then
		rm -rf "$WORKSPACE/sites/all/$dir"
		mv -f "$HTML_TMP/sites/all/$dir" "$WORKSPACE/sites/all/$dir"
	fi
done

# Remove temporary data
rm -rf $HTML_TMP