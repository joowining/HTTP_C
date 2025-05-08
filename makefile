# 변수 정의
CC = gcc
CFLAGS = -Wall -g

# 최종 타겟
main: main.o utils.o
	$(CC) $(CFLAGS) -o main main.o utils.o

# 개별 파일 컴파일
main.o: main.c utils.h
	$(CC) $(CFLAGS) -c main.c

utils.o: utils.c utils.h
	$(CC) $(CFLAGS) -c utils.c

# 정리 명령
clean:
	rm -f *.o main
