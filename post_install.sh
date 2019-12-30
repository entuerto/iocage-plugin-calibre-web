#!/bin/sh

# Create location for calibre-web
mkdir /usr/local/app

git clone https://github.com/janeczku/calibre-web.git /usr/local/app/calibre-web

# Install dependencies 
pip install --target vendor -r /usr/local/app/calibre-web/requirements.txt

pw user add calibreweb -c calibreweb -u 488 -d /nonexistent -s /usr/bin/nologin
chown -R calibreweb:calibreweb /usr/local/app/calibre-web

chmod u+x /usr/local/etc/rc.d/calibre_web

sysrc "calibre_web_enable=YES"

service calibre_web start