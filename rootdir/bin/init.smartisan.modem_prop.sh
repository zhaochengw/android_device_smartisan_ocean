#! /vendor/bin/sh

#SMARTISAN_BEGIN (CCM4006: change shell script to load modem prop)
#2017-12-27 cuipengfei: add script to load modem prop. M0215476
#2018-04-04 cuipengfei: Porting the feature. M0239864.

modem_prop_file="/vendor/etc/smartisan-modem.prop"

#echo "modem_prop_file:$modem_prop_file"

set_prop_func()
{
	while read -r line
	do
		#echo $line
		if [ "${line:0:1}" = "#" ] || [ "${line:0:1}" = "" ]
		then
		    continue
		fi
		setprop ${line%=*} ${line#*=}

	done < $1
}

if [ -e "$modem_prop_file" ]
then
	set_prop_func $modem_prop_file
else
	echo "Not found $modem_prop_file"
	exit 1
fi

exit 0
#SMARTISAN_END (CCM4006: change shell script to load modem prop)
