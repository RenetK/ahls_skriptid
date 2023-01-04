#apache paigaldusskript
#
#
#
APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
#kui väärtus võrdub 0
if [ $APACHE2 -eq 0 ]; then
	echo "Paigalfame apache2"
	apt install apache2
	echo "Apache on paigaldatud"
#kui väärtus on 0
elif [ $APACHE2 -eq 1 ]; then
	echo "apache2 on juba paigaltatud"
	service apache2 start
	service apache2 status
fi
