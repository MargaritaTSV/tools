#!/bin/bash
# Subtask a
gcc -o zombie zombie.c
# Subtask b
./zombie &
# ps -ef | grep zombie
# Subtask c
# SIGTERM не убирает зомби, родитель должен собрать статус
# Subtask d
# SIGKILL не убирает зомби, состояние сохраняется до wait у родителя
# Subtask e
# Завершить зомби можно завершив родителя или вызвав wait в родителе

