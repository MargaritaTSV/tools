#!/bin/bash
sudo install -m 755 s05a.sh /usr/local/bin/s05a.sh
sudo install -m 644 u05a.service /etc/systemd/system/u05a.service
sudo systemctl daemon-reload
sudo systemctl start u05a.service
sudo systemctl enable u05a.service
