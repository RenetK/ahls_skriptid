MYSQL=$(dpkg-query -W -f='${Status}' mysql | grep -c "ok installed")
if [ $MYSQL -eq 0 ]; then
	echo "Paigaldame MySQL"
	apt install gnupg
	cd /tmp
	wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb
	dpkg -i mysql-apt-config*
	apt update
	apt install mysql-server
	mysql_secure_installation
	echo "MySQL on paigaldatud"
elif [ $MYSQL -eq 1 ]; then
echo "MySQL on juba paigaldatud"

fi
