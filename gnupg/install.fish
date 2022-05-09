#!/usr/bin/env fish

echo "Install gpgtools from https://gpgtools.org/"

mkdir -p ~/.gnupg
test -f ~/.gnupg/gpg-agent.conf || touch ~/.gnupg/gpg-agent.conf

# set pinentry-tty
grep -q "pinentry-program" ~/.gnupg/gpg-agent.conf || echo "pinentry-program "(which pinentry-tty) >> ~/.gnupg/gpg-agent.conf

# ask password every 24hours only
grep -q "default-cache-ttl" ~/.gnupg/gpg-agent.conf || echo "default-cache-ttl 86400" >> ~/.gnupg/gpg-agent.conf
grep -q "max-cache-ttl" ~/.gnupg/gpg-agent.conf || echo "max-cache-ttl 86400" >> ~/.gnupg/gpg-agent.conf

# reload agent
if command -qs gpp-connect-agent
	gpg-connect-agent reloadagent /bye
end

# To fix the " gpg: WARNING: unsafe permissions on homedir '/home/path/to/user/.gnupg' " error
# Make sure that the .gnupg directory and its contents is accessibile by your user.
chown -R $(whoami) ~/.gnupg/

# Also correct the permissions and access rights on the directory
chmod 600 ~/.gnupg/*
chmod 700 ~/.gnupg
