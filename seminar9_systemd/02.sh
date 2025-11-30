# Subtask a
sudo touch /var/log/alpaca.txt
sudo chown root:root /var/log/alpaca.txt

# Subtask b
sudo bash -c 'cat <<"EOS" > /usr/local/bin/alpaca.sh
#!/usr/bin/env bash
current_date_time="$(date)"
echo "${current_date_time}" >> /var/log/alpaca.txt
EOS'
sudo chmod +x /usr/local/bin/alpaca.sh

# Subtask c
sudo bash -c 'cat <<"EOS" > /etc/systemd/system/alpaca.service
[Unit]
Description=Simplest service, writes to the file /var/log/alpaca.txt once

[Service]
ExecStart=/usr/local/bin/alpaca.sh

[Install]
WantedBy=multi-user.target
EOS'

# Subtask d
sudo systemctl daemon-reload

# Subtask e
systemctl status alpaca

# Subtask f
sudo systemctl start alpaca
# Проверка появления новой строки в /var/log/alpaca.txt после запуска сервиса.

# Subtask g
sudo systemctl enable alpaca
# Перезагрузить систему вручную и проверить содержимое /var/log/alpaca.txt
# на наличие новой записи после старта системы.

# Subtask h
sudo bash -c 'cat <<"EOS" > /usr/local/bin/alpaca.sh
#!/usr/bin/env bash
start_time="Started $(date)"
echo "$start_time" >> /var/log/alpaca.txt
sleep 30
finish_time="Finished $(date)"
echo "$finish_time" >> /var/log/alpaca.txt
EOS'
sudo chmod +x /usr/local/bin/alpaca.sh
sudo systemctl daemon-reload
sudo systemctl start alpaca
systemctl status alpaca

# Subtask i
systemctl list-units --type=service
