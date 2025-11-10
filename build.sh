#!/bin/sh
rm -rf public && mkdir $_
cp .htaccess html/index.html robots.txt sitemap.xml public

# create the html folder structure
for page in js rails; do
	mkdir public/$page && cp html/$page.html $_/index.html
done

# compile css
mkdir public/css && sass css/style.scss $_/style.css

# create javascript, images, and favicons
for assets in js images; do
	mkdir public/$assets && cp $assets/* $_
done
