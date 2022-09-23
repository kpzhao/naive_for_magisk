#!/system/bin/sh

MODDIR=${0%/*}
bin_path=$MODDIR/binary
conf_path=$MODDIR/config

until [ $(getprop sys.boot_completed) -eq 1 ];do
	sleep 5
done

pkill naive
nohup $bin_path/naive -c $conf_path/config.json 1>/dev/null 2>&1 &


