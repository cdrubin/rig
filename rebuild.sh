#! /bin/sh

curl https://justine.lol/redbean/redbean-1.0.com -o rig.com.built

# database
zip rig.com.built database.sqlite

# lua
zip rig.com.built .init.lua load.lua save.lua

# libraries
zip -r rig.com.built lib

# application assets (allow demo to load from zip by default)
cp index.html index.html.original
sed -i'' 's/load( \x27demo\x27 )/load( \x27zip:demo\x27 )/' index.html
zip rig.com.built index.html demo bye
mv index.html.original index.html

