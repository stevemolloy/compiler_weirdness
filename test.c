#include <limits.h>
#include <stdio.h>

int check_number(int number) {
    return (number + 1) > number;
}

int main(void) {
    int num = INT_MAX;

    if (check_number(num)) printf("Hello world!\n");
    else printf("Goodbye world!\n");

    return 0;
}
