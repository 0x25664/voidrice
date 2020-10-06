#!/bin/sh
### BATTERY ###
battery() {
		batt="$(cat /sys/class/power_supply/BAT0/capacity)"
		stat="$(cat /sys/class/power_supply/BAT0/status)"
		echo -e "$batt%"
}

## RAM ###
mem() {
	mem=`free | awk '/Mem/{printf("%.1f"), $3/($2+.000000001)*100}'`
	echo -e "$mem%"
}

## CPU ###
cpu() {
	read cpu a b c previdle rest < /proc/stat
	prevtotal=$((a+b+c+previdle))
	sleep 0.5
	read cpu a b c idle rest < /proc/stat
	total=$((a+b+c+idle))
	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
	echo -e "$cpu%"
}

### PKGS ###
pkgs() {
	pkgsUsr="$(nix-store -q --requisites ~/.nix-profile | wc -l)"
	pkgsSys="$(nix-store -q --requisites "/run/current-system/sw/" | wc -l)"
	pkgsTot=$((pkgsUsr + pkgsSys))
	echo -e "$pkgsTot"
}

### DATE ###
date_custom() {
	datecustom="$(date '+%a %d %b %r')"
	echo -e "$datecustom"
}
while :; do
	echo " [$(pkgs)] ($(mem) $(cpu) $(battery))"
		sleep 1
done
