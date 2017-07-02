#!/bin/bash

init() {


		aai_dir="/usr/share/accessible-arch-installer"
		aai_conf="/etc/accessible-arch-installer.conf"
		aai_lib="/usr/lib/accessible-arch-installer"


	trap '' 2
	
	for file in $(ls "$aa_lib") ; do
		source "$aa_lib"/"$file"
	done

	source "$aa_conf"
	language
	source "$lang_file"
	export reload=true

}

main() {

	update_mirrors
	check_connection
	set_keys
	set_locale
	set_zone
	prepare_drives
	prepare_base
	graphics
	add_software
	install_base
	configure_system
	set_hostname
	add_user
	reboot_system

}

dialog() {

	if "$screen_h" ; then
		/usr/bin/dialog --colors --backtitle "$backtitle" --title "$op_title" "$@"
	else
		/usr/bin/dialog --colors --title "$title" "$@"
	fi

}


opt="$1"
init
main

# vim: ai:ts=8:sw=8:sts=8:noet
