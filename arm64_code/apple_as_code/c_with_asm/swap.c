#include <stdio.h>
int swap(int *a, int *b) {
  int sum;
  __asm__("ldr    w9, [%1]\n\t"
          "ldr    w10, [%2]\n\t"
          "str    w9, [%2]\n\t"
          "str    w10, [%1]\n\t"
          "add    w9, w9, w10\n\t"
          "str    w9, %0"
          : "=m"(sum)
          : "r"(a), "r"(b)
          : "w9", "w10");
  return sum;
}

int main() {
  int a = 10, b = 20;
  printf("a=%d, b=%d\n", a, b);
  swap(&a, &b);
  printf("a=%d, b=%d\n", a, b);
}
