#!/bin/bash
# Subtask a
chmod +x counter.sh
# Subtask b
./counter.sh
# Завершаем в переднем плане Ctrl-C
# Subtask c
./counter.sh &
fg
# Завершаем в переднем плане Ctrl-C
# Subtask d
./counter.sh > a.txt
# Переходим во второй терминал
# watch -n 2 tail a.txt
# tail -f a.txt
# Возвращаемся в первый терминал
# Завершаем в переднем плане Ctrl-C
# Subtask e
./counter.sh > a.txt &
# tail -f a.txt
fg
# Завершаем в переднем плане Ctrl-C
# Subtask f
./counter.sh > a.txt &
ps
# Используем PID counter.sh
# kill <PID>
ps
