#include <stdio.h>
#include <string.h> 
#include <time.h>
#include <stdlib.h>

int g=0;      //pomocnicze zmienne
int pomoc=0;
int wypisane=0;
int ktory=0;

void wypisywanie(int wartosci[],int dlugosc,char *str, int ile)
{
  int wypisz=1;
  int pomoc2[dlugosc+1];
    for(int j=0;j<dlugosc;j++)      //uzupelnienie inta zerami
    {
     pomoc2[j]=0;
    }
  for(int j=0;j<dlugosc;j++)    //sprawdzanie czy jest to replikacja a nie kombinacja z powtorzeniami typu abc -> cbb
    {
     pomoc2[wartosci[j]]++;
    }
    for(int j=1;j<dlugosc;j++)
    {
     if(pomoc2[j]!=1){wypisz=0;};
    }
  int potenga=1;
if(wypisz)      //dzialania tylko na poprawnych replikacjach
{
  ktory++;      //liczy ilosc replikacji
  for(int i=1; i<=dlugosc; i++)
    {
      potenga=potenga*i;
    }
    
  if(potenga-wypisane>potenga-ile)      //pseudolosuje ktore replikacje wypisac a ktore nie
  {
  if((potenga-ktory)+1!=ile-wypisane)
  {
    int r = rand()%potenga; 
    r++;
    if(r>ile)
    {
      wypisz=0;
    }
  }
  else
  {
    wypisz=1;
  }
  }
  else{wypisz=0;}
}

if(wypisz)      
{
  for(int j=0;j<dlugosc;j++)
    {
    printf("%c",str[wartosci[j]-1]);
    }
  printf("\n");
  wypisane++;
  }
}

void replikacja(int dlugosc,char *str,int wartosci[],int ile)  //tworzy KOMBINACJE z powtórzeniami za pomocą replikacji
{
  for(int i=1; i<dlugosc+1;i++)
    {
      if(g==dlugosc)
      {
        i++;
        if(wartosci[dlugosc-1]!=pomoc)
          {
        wypisywanie(wartosci,dlugosc,str, ile);       
          }
          pomoc=wartosci[dlugosc-1];
      }
      else
      {
        wartosci[g]=i;
        g++;
        replikacja(dlugosc,str,wartosci, ile);
        
      }
    }
  g=g-1;
}

int main() 
{ 
   srand(time(NULL));
    char str[] = "abc";       //wartosc z ktorej bedziemy robic replikacje
    int dlugosc = strlen(str);   
    int ile=4;            //ilosc implikacji
    int wartosci[dlugosc];
    replikacja(dlugosc,str,wartosci,ile);
    return 0; 
} 

