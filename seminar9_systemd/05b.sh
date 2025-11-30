#!/bin/bash
sudo install -m 755 s05b.sh /usr/local/bin/s05b.sh
sudo install -m 644 u05b.service /etc/systemd/system/u05b.service
sudo install -m 644 u05b.path /etc/systemd/system/u05b.path
sudo systemctl daemon-reload
sudo systemctl start u05b.path
sudo systemctl enable u05b.path
