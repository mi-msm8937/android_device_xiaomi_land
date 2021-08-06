#!/vendor/bin/sh

if grep -E "S88537AC1|S88537EC1" /proc/cmdline > /dev/null; then
	setprop ro.vendor.fingerprint.supported 0
else
	setprop ro.vendor.fingerprint.supported 1
fi

exit 0
