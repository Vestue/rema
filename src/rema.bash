#!/bin/bash

# rema

# Author: Ragnar Winblad von Walter
# Github: Vestue


Main() {
	# Setup colored prints
	RED=`tput setaf 1`
	GREEN=`tput setaf 2`
  BLUE=`tput setaf 4`
  YELLOW=`tput setaf 6`
  RESET=`tput sgr0`

  config_location = "../config/user"
	
	if [[ $# -eq 0 ]]
	then
		PrintDefault
		return
	fi
	
	case $1 in
		--help)
			PrintHelp
			;;
		-h)
			PrintHelp
			;;
		default)
			DefaultRepoLocation
			;;
		--default)
			DefaultRepoLocation
			;;
		-d)
			DefaultRepoLocation
			;;
		*)
			PrintHelpShort
			;;
	esac
}

PrintDefault() {
	# Print status info from monitored repositories
}

PrintHelp() {
	# Print text from .txt file
}

PrintHelpShort() {
	echo -e "\n{YELLOW}rema\n{RESET}Use 'rema -h' or 'rema --help' to get more guidance.\n"
}

DefaultRepoLocation() {
	if [[ $# -eq 1 ]]
	then
		PrintRepoLocation
		return
	
	# Second argument changes the location
	# Check if the location exists before changing it
	elif [[ $# -eq 2 ]]
	then
		if [ `ls $2` -eq 0 ]
		then
			rg repo-default $config_location | sed -i 's/repo-default=*\n/repo-default='$2''
			echo "{GREEN}Changed{RESET} default monitored directory to $2"
		else
			echo "Could not find directory{RED}!{RESET}"
		fi
	fi
}
