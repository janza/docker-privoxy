#!/bin/bash

./privoxy-blocklist.sh

/usr/sbin/privoxy --no-daemon /etc/privoxy/config
