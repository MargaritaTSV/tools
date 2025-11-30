#!/bin/bash
# Subtask a
./intercept.sh
# При Ctrl-C скрипт не завершается, так как ловит SIGINT и выполняет обработчик, продолжая sleep
# Subtask b
./ignore.sh
# При Ctrl-C скрипт не завершается, так как SIGINT игнорируется и не прерывает sleep
