#!/usr/bin/bash
 sudo cp zerotier-cli zerotier-idtool -t /usr/local/bin/ && sudo cp zerotier-one /usr/sbin/ && sudo cp zerotier-one.service /etc/systemd/system/
 LINE=`sed -n -e "/\[Install\]/=" /etc/systemd/system/sshd.service`
 sed -i "$LINE a Wants=zerotier-one.service" /etc/systemd/system/sshd.service
