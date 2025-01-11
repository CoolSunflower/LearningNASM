#include <stdio.h>

// This exposes the function to the outside
extern int test(int, int);

int test(int a, int b){
    printf("Hi, the numbers provided are %d %d\n", a, b);
    return a + b;
}