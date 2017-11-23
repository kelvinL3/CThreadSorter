all:
	gcc Sorter.c -O3 -o sorter -lpthread

clean:
	rm sorter

mastertest:
	make run1
	make run2
	make run3
	make run4

run:
	./sorter -c director_name,gross -d ./test1

run1:
	./sorter -c director_name

run2:
	./sorter -c director_name,gross -o result 

run3:
	./sorter -c director_name,gross -d ./test1

run4:
	./sorter -c director_name,gross -o result -d ./test1

debug:
	gcc Sorter.c -Wall -Werror -fsanitize=address -g -o sorter -lpthread

gdbdebug:
	gcc Sorter.c -Wall -fsanitize=address -g -o sorter -lpthread

gdb:
	gdb --args ./sorter -c director_name -d ./test1