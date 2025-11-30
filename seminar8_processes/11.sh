#!/bin/bash
nohup ./counter.sh > c.txt &
# Закрываем терминал
# В новом терминале проверяем tail -f c.txt и процесс через ps
# Завершаем процесс kill <PID>
