#!/bin/bash
# Subtask a
./create_group.sh
# Subtask b
# Переходим во второй терминал
# ps -e -o pid,ppid,pgid,comm
# Возвращаемся в первый терминал
# Subtask c
# kill <PID create_group.sh>
# Если дети остаются, определяем нового родителя через ps и завершаем pkill -f counter.sh
# Subtask d
./create_group.sh
# Переходим во второй терминал
# ps -e -o pid,ppid,pgid,comm
# kill -- -<PGID>
# Subtask e
./create_group.sh
# Нажимаем Ctrl-C
