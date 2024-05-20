#include <stdio.h>

void printb(long long n) {
	long long s, c;
	// low bit to high bit
	for (c = 63; c>=0; c--) {
		s = n>>c;
		// 1 byte split by ' '
		if ((c+1) % 8 == 0) 
			printf(" ");

		if (s&1)
			printf("1");
		else 
			printf("0");
	}
	printf("\n");
}
