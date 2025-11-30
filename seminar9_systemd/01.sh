# Subtask a
systemctl status nginx
# Загружен ли юнит и что на это указывает?
# В комментариях отметьте строку Loaded в выводе systemctl status.
# Включён ли сервис в автозагрузку и что на это указывает?
# Отметьте наличие enabled/disabled в строке Loaded.
# Активен ли сервис и что на это указывает?
# Отметьте состояние Active в выводе.

# Subtask b
sudo systemctl stop nginx
systemctl status nginx
# Проверка доступа к http://localhost в браузере при неактивном сервисе.

# Subtask c
sudo systemctl start nginx
systemctl status nginx
# Проверка доступа к http://localhost в браузере при активном сервисе.

# Subtask d
sudo systemctl enable nginx
systemctl status nginx
sudo systemctl disable nginx
systemctl status nginx
