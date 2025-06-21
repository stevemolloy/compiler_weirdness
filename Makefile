CFLAGS = -Wall -Wextra -std=c99 -Wpedantic
EXES = test_gcc_noopt test_gcc_opt test_clang_noopt test_clang_opt

all: $(EXES)

test_gcc_noopt: test.c
	gcc $(CFLAGS) -o test_gcc_noopt test.c

test_gcc_opt: test.c
	gcc $(CFLAGS) -O -o test_gcc_opt test.c

test_clang_noopt: test.c
	clang $(CFLAGS) -o test_clang_noopt test.c

test_clang_opt: test.c
	clang $(CFLAGS) -O -o test_clang_opt test.c

run: $(EXES)
		@for exe in $(EXES); do \
			printf "%s ==>\t" "$$exe"; \
			./$$exe; \
		done

clean:
	@rm $(EXES)

