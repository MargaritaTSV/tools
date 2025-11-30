#!/bin/bash
# Subtask a
./create_group.sh > a.txt &
./create_group.sh > b.txt &
# Subtask b
# ps -e -o pid,ppid,pgid,sid,comm
# Subtask c
# Закрываем терминал и отмечаем какие сигналы отправлены сессии
