#!/bin/bash
# Subtask a
./signal_catcher.sh &
# Переходим во второй терминал
# kill <PID>
# Возвращаемся в первый терминал
# Subtask b
# Переходим во второй терминал
# kill -SIGINT <PID>
# kill -SIGTSTP <PID>
# Возвращаемся в первый терминал
# Subtask c
# kill -SIGKILL <PID>
# Subtask d
./signal_catcher.sh
# Нажимаем Ctrl-C и наблюдаем сообщение о SIGINT
# Быстрые Ctrl-C увеличивают частоту вывода, потому что сигнал прерывает sleep
# Subtask e
# Нажимаем Ctrl-Z, процесс останавливается из-за стандартного поведения терминала
# fg
# Subtask f
signal_catcher.sh > sc.txt
# Закрываем терминал
# В новом терминале проверяем tail -f sc.txt и pid процесса
