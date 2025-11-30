#!/bin/bash
# Subtask a
./counter.sh &
# Subtask b
ps
# Subtask c
ps -ef
# Вопрос: PID и PPID counter.sh отмечаем после просмотра
# Subtask d
ps aux
# Вопрос: состояние counter.sh смотрим в STAT
# Subtask e
# pstree может потребовать установки
pstree
# Вопрос: предки counter.sh по дереву
# Subtask f
ps -e -o pid,ppid,pcpu,pmem,comm
# Subtask g
ps -e -o pid,ppid,pcpu,pmem,comm --sort=pmem
# Subtask h
# Подставляем PID counter.sh
ps -p <PID> -o uid,pid,ppid,pcpu,pmem,comm
# Subtask i
ps -e -o uid,pid,ppid,pcpu,pmem,comm | grep counter.sh
# Subtask j
ps -p <PID> -o ppid --no-headers
# Subtask k
# kill -STOP <PID>
# В jobs виден остановленный процесс
# kill -CONT <PID>
# Subtask l
# kill <PID>
# Subtask m
./counter.sh &
# pkill -f counter.sh
