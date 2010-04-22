#include <stdio.h>
#include <assert.h>
void main(){
	int i=0;
	int j=0;
	int k=0;
	for (i;i<=100;i++){
		j=i%3;
		k=i%5;
		if (( j== 0) && (k == 0)) { printf ("FizzBuzz"); }
		else if (j == 0)  printf ("Fizz");
		else if (k == 0) printf ("Buzz");
		else printf ("%d", i);
		printf ("\n");
		assert (0);
	}	
}
