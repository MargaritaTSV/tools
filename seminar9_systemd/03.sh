#!/bin/bash
sudo install -m 755 s03.sh /usr/local/bin/s03.sh
sudo install -m 644 u03.service /etc/systemd/system/u03.service
sudo systemctl daemon-reload
sudo systemctl start u03.service
sudo systemctl enable u03.service
