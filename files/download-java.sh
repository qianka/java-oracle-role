#!/bin/bash

wget -c --no-cookies --no-check-certificate \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     -O "$2" \
     "$1" \
&& \

# touch "`dirname $2`/`sha256sum $2 | cut -d ' ' -f1`"
ln -sf "$2" "`dirname $2`/`sha256sum $2 | cut -d ' ' -f1`"
