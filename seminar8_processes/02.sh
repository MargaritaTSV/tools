#!/bin/bash
# Subtask a
./counter.sh
# Нажимаем Ctrl-Z
fg
# Завершаем Ctrl-C
# Subtask b
./counter.sh > a.txt
# Переходим во второй терминал
# tail -F a.txt
# Возвращаемся в первый терминал
# Нажимаем Ctrl-Z
# Переходим во второй терминал
# tail -F a.txt
# Возвращаемся в первый терминал
fg
# Переходим во второй терминал
# tail -F a.txt
# Возвращаемся в первый терминал
# Нажимаем Ctrl-Z
bg
# Переходим во второй терминал
# tail -F a.txt
# Возвращаемся в первый терминал
fg
# Завершаем Ctrl-C
# Subtask c
./counter.sh > a.txt &
./counter.sh > b.txt &
./counter.sh > c.txt &
# tail -F a.txt
# tail -F b.txt
# tail -F c.txt
jobs
# fg %N
# Нажимаем Ctrl-Z
jobs
bg %N
jobs
# kill %N
jobs
# kill -STOP %N
jobs
# bg %N
# kill -CONT %N
jobs
