#!/bin/sh

CERTSPATH="/usr/local/etc/ejabberd/certs.pem"

cat /etc/certs/*/privkey.pem >"${CERTSPATH}"
cat /etc/certs/*/fullchain.pem >"${CERTSPATH}"
service ejabberd reload
exit 0
