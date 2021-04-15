CC:=gcc
exe:=main
obj:=main.o a.o b.o c.o

all:$(obj)
	$(CC) -o $(exe) $(obj)
%.o:%.c
	$(CC) -c $^ -o $@

.PHONY:clean
clean:
	rm -rf $(obj) $(exe)
