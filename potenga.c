#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	const char *baza;
	baza=argv[1];
	const char *permutacja;
	permutacja=argv[2];
	int dlugosc = strlen(baza);
	int ciag[dlugosc];
	int n=0;
	int m=0;
		for(int i=0;i<dlugosc;i++)
		{
			for(int j=0;j<dlugosc;j++)
			{
			if(permutacja[j]==baza[i])
				{
				ciag[i]=j;
				}
			}
		}
	while(n<dlugosc)
	{
		if(ciag[n]==m)
		{
			printf("%c",permutacja[ciag[m]]);n++;m=0;
		} 
		else;
		{
			m++;
		}
	}
printf("\n");
return 0;
}