#! /usr/bin/env bash
AWESOME_CONFIG="$HOME/.config/awesome"

cd "$(dirname "$0")"	#cd into this repo's dir

if [[ -d "$AWESOME_CONFIG" ]]
then
	echo "An awesomeWM config already exists!. It will be moved to ~/.config/awesome.old"
	[[ -d "$HOME/.config/awesome.old" ]] && rm -rf "$HOME/.config/awesome.old"	#Delete any old backup	
	mv "$AWESOME_CONFIG" "$HOME/.config/awesome.old"
	cp -r "awesome" "$AWESOME_CONFIG/"
	echo "Success!"
else
	cp -r "awesome" "$AWESOME_CONFIG"
	echo "Success!"
fi

echo "If you are currently logged into AwesomeWM, press Super+Ctrl+R to load the new config."

exit
