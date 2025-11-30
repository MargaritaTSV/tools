#!/bin/bash
# Subtask a
systemctl status nginx
# Вопросы: загрузка юнита, автозагрузка, активность отмечаем по Loaded/Active
# Subtask b
sudo systemctl stop nginx
systemctl status nginx
# Проверяем http://localhost
# Subtask c
sudo systemctl start nginx
systemctl status nginx
# Проверяем http://localhost
# Subtask d
sudo systemctl enable nginx
systemctl status nginx
sudo systemctl disable nginx
systemctl status nginx
