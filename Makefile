all:
	gcc Sorter.c -O3 -o sorter

clean:
	rm sorter

run:
	./sorter -c director_name,gross -o result -d ./test
debug:
	gcc Sorter.c -Wall -Werror -fsanitize=address -g -o sorter
