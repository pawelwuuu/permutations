#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>

int g = 0;	//pomocnicze zmienne
int pomoc = 0;
int wypisane = 0;
int ktory = 0;
int bylo[62];

char tworzenie()
{
	int wyjdz = 1;
	int r;
	do {
		r = rand() % 60;
		if (bylo[r] == 0)
		{
			wyjdz = 0;
			bylo[r] = 1;
			if (r < 10)
			{
				r = r + 48;
			}
			else
			{
				if (r < 36)
				{
					r = r + 55;
				}
				else
				{
					r = r + 61;
				}
			}
		}
	}

	while (wyjdz == 1);
	return r;

}

int wypisywanie(int wartosci[], int dlugosc, char *str, char *str2, int ile)
{
	if (ile == wypisane)
	{
		return 0;
	}	//optymalizacja
	int wypisz = 1;
	int pomoc2[dlugosc + 1];
	for (int j = 0; j < dlugosc; j++)	//uzupelnienie inta zerami
	{
		pomoc2[j] = 0;
	}

	for (int j = 0; j < dlugosc; j++)	//sprawdzanie czy jest to replikacja a nie kombinacja z powtorzeniami typu abc -> cbb
	{
		pomoc2[wartosci[j]]++;
	}

	for (int j = 1; j < dlugosc; j++)
	{
		if (pomoc2[j] != 1)
		{
			wypisz = 0;
		};

	}

	int potenga = 1;
	if (wypisz)	//dzialania tylko na poprawnych replikacjach
	{
		ktory++;	//liczy ilosc replikacji
		if (dlugosc > 7)
		{
			potenga = 5040;
		}
		else
		{
			for (int i = 1; i <= dlugosc; i++)
			{
				potenga = potenga * i;
			}
		}

		if (potenga - wypisane > potenga - ile)	//pseudolosuje ktore replikacje wypisac a ktore nie
		{
			if ((potenga - ktory) + 1 != ile - wypisane)
			{
				int r = rand() % potenga;
				r++;
				if (r > ile)
				{
					wypisz = 0;
				}
			}
			else
			{
				wypisz = 1;
			}
		}
		else
		{
			wypisz = 0;
		}
	}

	if (wypisz)	//wypisuje
	{
		for (int j = 0; j < dlugosc; j++)
		{
			printf("%c", str[wartosci[j] - 1]);
		}

		printf("%s\n", str2);
		wypisane++;
	}
}

int replikacja(int dlugosc, char *str, char *str2, int wartosci[], int ile)	//tworzy KOMBINACJE z powtórzeniami za pomocą replikacji
{
	for (int i = 1; i < dlugosc + 1; i++)
	{
		if (ile == wypisane)
		{
			return 0;
		}	//optymalizacja
		if (g == dlugosc)
		{
			i++;
			if (wartosci[dlugosc - 1] != pomoc)
			{
				wypisywanie(wartosci, dlugosc, str, str2, ile);
				if (ile == wypisane)
				{
					return 0;
				}	//optymalizacja    
			}

			pomoc = wartosci[dlugosc - 1];
		}
		else
		{
			wartosci[g] = i;
			g++;
			replikacja(dlugosc, str, str2, wartosci, ile);
			if (ile == wypisane)
			{
				return 0;
			}	//optymalizacja

		}
	}

	g = g - 1;
}

int main(int argc, char *argv[])
{
	srand(time(NULL));

	int du = atoi(argv[1]);
	int dlugosc = du;
	char str0[du];
	for (int i = 0; i < dlugosc; i++)
	{
		char p = tworzenie();
		str0[i] = p;
	}

	str0[dlugosc] = '\0';

	
	char str[9];
	char str2[53];
	strncpy(str, str0, 9);
	strncpy(str2, str0 + 8, 53);
	str[8] = '\0';
	str2[52] = '\0';
	int ile = 1;
	
	if (*argv[2] == *"A")
	{
		for (int i = 1; i <= dlugosc; i++)
		{
			ile = ile * i;
		}
	}
	else
	{
		ile = atoi(argv[2]);	//ilosc implikacji
	}

	int wartosci[dlugosc];
	for (int i = 0; i < dlugosc; i++)
	{
		wartosci[i] = i;
	}
	if(dlugosc>10){dlugosc=9;}else{str2[0]='\0';}
	replikacja(dlugosc, str, str2, wartosci, ile);
	printf("%s\n", str0);
	return 0;
}