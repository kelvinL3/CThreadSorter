all:
	gcc Sorter.c -O3 -o sorter -lpthread

clean:
	rm sorter

runall:
	make run1
	make run2
	make run3
	make run4

run1:
	./sorter -c director_name

run2:
	./sorter -c director_name,gross -o result 

run3:
	./sorter -c director_name,gross -d ./test

run4:
	./sorter -c director_name,gross -o result -d ./test

debug:
	gcc Sorter.c -Wall -Werror -fsanitize=address -g -o sorter -lpthread
