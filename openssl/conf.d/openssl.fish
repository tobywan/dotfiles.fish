#!/usr/bin/env fish

# For brew installed openssl

# A CA file has been bootstrapped using certificates from the system
# keychain. To add additional certificates, place .pem files in
#   /opt/homebrew/etc/openssl@3/certs
#
# and run
# /opt/homebrew/opt/openssl@3/bin/c_rehash


fish_add_path /opt/homebrew/opt/openssl@3/bin
set -gx LDFLAGS "-L/opt/homebrew/opt/openssl@3/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/openssl@3/include"
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/openssl@3/lib/pkgconfig"
