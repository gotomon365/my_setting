#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define SIZE  100
int rome_to_int(char *s);
void int_to_rome(int i);



int main(int argc, char *argv[])

{
    
    char s1[SIZE] = "";
    char s2[SIZE] = "";
    while ((scanf("%s %s", s1, s2)) != EOF) {
	int s1_value = 0, s2_value =0;
	s1_value = rome_to_int(s1);
	s2_value = rome_to_int(s2);
	
	int_to_rome(abs(s1_value -s2_value));
    }
    return 0;
}

int rome_to_int(char *s)
{
    int value = 0;
    int i = 0;
    while (i < strlen(s)) {
	switch (s[i]) {
	case 'I': {
	    if (s[i+1] == 'V') {
		value += 4;
		i++;
	    } else if (s[i+1] == 'X') {
		value += 9;
		i++;
	    } else {
		value += 1;
	    }
	    i++;
	    break;
	}
	case 'V':
	    value += 5;
	    i++;
	    break;
	case 'X':
	    if (s[i+1] == 'L') {
		value += 40;
		i++;
	    } else if (s[i+1] == 'C') {
		value += 90;
		i++;
	    } else {
		value += 10;
	    }
	    i++;
	    break;
	    
	case 'L':
	    value += 50;
	    i++;
	    break;

	case 'C':
	    if (s[i+1] == 'D') {
		value += 400;
		i++;
	    } else if (s[i+1] == 'M') {
		value += 900;
		i++;
	    }
	    i++;
	    break;

	case 'D':
	    value += 500;
	    i++;
	    break;
	case 'M':
	    value += 1000;
	    i++;
	    break;
	    
	default:
	    break;
	}
    }
    return value;
}
void int_to_rome(int i)
{
    if (i == 0) {
	printf("ZERO");
    }
    else {
	while (i > 0) {
	    if ( i >= 1000) {
		i -= 1000;
		printf("M");
	    }
	    if (i >= 900) {
		i -= 900;
		printf("CM");
	    }
	    if (i >= 500) {
		i -= 500;
		printf("D");
	    }
	    if (i >= 400) {
		i -= 400;
		printf("CD");
	    }
	    if (i >= 100) {
		i -= 100;
		printf("C");
	    }
	    if (i >= 90) {
		i -= 90;
		printf("XC");
	    }
	    if (i >= 50) {
		i -= 90;
		printf("L");
	    }
	    if (i >= 40) {
		i -= 40;
		printf("XL");
	    }
	    if (i >= 10) {
		i -= 10;
		printf("X");
	    }
	    if (i >= 9) {
		i -=9;
		printf("IX");
	    }
	    if (i >= 5) {
		i -= 5;
		printf("V");
	    }
	    if (i >= 4) {
		i -= 4;
		printf("IV");
	    }
	    if (i >= 1) {
		i -= 1;
		printf("I");
	    }
	}

    }
    printf("\n");
}

