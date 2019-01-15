#!/bin/bash

tracker=$(curl -s -L https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | tr -s '\n' ',' | sed 's/.$//')

sed -i "" "s#^bt-tracker=.*#bt-tracker=${tracker}#" ~/.aria2/aria2.conf

/bin/launchctl stop aria2

/bin/launchctl start aria2