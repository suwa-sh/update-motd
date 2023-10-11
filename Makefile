.PHONY: install

install:
	./update-motd.sh
	mkdir -p ${HOME}/Library/LaunchDaemons/
	cp update-motd.plist ${HOME}/Library/LaunchDaemons/
	launchctl load -w ${HOME}/Library/LaunchDaemons/update-motd.plist
	launchctl list | grep update-motd

uninstall:
	launchctl unload -w ${HOME}/Library/LaunchDaemons/update-motd.plist
	rm  ${HOME}/Library/LaunchDaemons/update-motd.plist
	launchctl list | grep update-motd || exit 0
