#!/sbin/sh

if [ $BOOTMODE != true ];then
    abort "Please install this module in magisk manager"
fi

if [ "$ARCH" != "arm64" ];then
    abort "Abort. This module is built for arm64."
fi

CONF_PATH=/sdcard/Android/data/aria2

use_default(){
    ui_print "Use the default configuration"
    set_perm $MODPATH/binary/naive 0 0 0755
    set_perm $MODPATH/config/config.json 0 0 0755
}


if [ -f "$CONF_PATH/aria2.conf" ];then
    use_personal
else
    use_default
fi


