#!/usr/bin/env bash
echo 'Laravel Digital Ocean Setup.';
sleep 1
echo 'Updating.'
sudo apt-get update
sleep 1
install=(php7.2 php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml);
echo 'Installing extensions.'
sleep 1

for item in ${install[*]}
    do
       sudo apt-get install $item
done
echo 'Programs installed.'
sleep 1

echo 'Laravel project setup begin.'
cd /var/www/html
rm *
echo 'Enter Github: '
read gitlink
git clone $gitlink
projectName=$(echo $gitlink | awk -F "/" '{print $5}')
cd /var/www/html/$projectName
sudo apt install composer
composer install
cp .env.example .env
php artisan key:generate
sudo chmod -R 777 storage
echo 'Left to do:'
echo 'Apache config file -> cd /etc/apache2/sites-available/000-default.conf'
echo 'sudo a2enmod rewrite and 	sudo service apache2 restart'