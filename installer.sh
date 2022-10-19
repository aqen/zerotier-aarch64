#!/usr/bin/bash
sudo chmod +x ./zerotier-* && sudo cp -p zerotier-cli zerotier-idtool -t /usr/local/bin/ && sudo cp -p zerotier-one /usr/sbin/ && sudo cp zerotier-one.service /etc/systemd/system/
sudo LINE=`sed -n -e "/\[Install\]/=" /etc/systemd/system/sshd.service`
sudo sed -i "$LINE a Wants=zerotier-one.service" /etc/systemd/system/sshd.service
sudo systemctl daemon-reload && sudo systemctl enable zerotier-one && sudo systemctl start zerotier-one

