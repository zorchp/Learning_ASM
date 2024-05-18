#include <stdio.h>

int a=12;
int b=13;
int bsum;

int main() {
	printf("The global varibales are %d and %d\n", a, b);
	__asm__(
			".intel_syntax noprefix ;"
			"mov rax, a \n"
			"add rax, b \n"
			"mov bsum, rax \n"
			::: "rax"
			);
	printf("The extended inline sum of global varibales is %d \n\n", bsum);

	// local variables
	int x=14, y=16, esum, eproduct, edif;
	printf("The local varibales are %d and %d\n", x, y);
	__asm__(
			".intel_syntax noprefix\n"
			"mov rax, rdx \n"
			"add rax, rcx \n"
			: "=a"(esum)
			:"d"(x), "c"(y)
			);
	printf("The extended inline sum of global varibales is %d \n", esum);

	__asm__(
			".intel_syntax noprefix\n"
			"mov rbx, rdx \n"
			"imul rbx, rcx \n"
			"mov rax, rbx;"
			: "=a"(eproduct)
			:"d"(x), "c"(y)
			:"rbx"
			);
	printf("The extended inline product of global varibales is %d \n", eproduct);

	__asm__(
			".intel_syntax noprefix\n"
			"mov rax, rdx \n"
			"sub rax, rcx \n"
			: "=a"(edif)
			:"d"(x), "c"(y)
			);
	printf("The extended inline difference of global varibales is %d \n", edif);
}
