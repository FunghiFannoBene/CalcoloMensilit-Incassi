@echo off
cd "C:\Users\Sheng\Desktop\Media mensile"
gcc -Wall -Wextra -Werror -D BUFFER_SIZE=10000   -c -o get_next_line.o get_next_line.c
gcc -Wall -Wextra -Werror -D BUFFER_SIZE=10000   -c -o get_next_line_utils.o get_next_line_utils.c
ar rcs get_next_line.a get_next_line.o get_next_line_utils.o
gcc -g get_next_line.a get_next_line.h
a.exe > risultato.txt
start risultato.txt
exit