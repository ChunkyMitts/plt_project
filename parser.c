#include <stdio.h>
#define yywrap() (/*CONSTCOND*/1)

extern int yylex();
extern FILE* yyin;


int main(void)
{
    FILE *myfile = fopen("testing.txt", "r");

    if(!myfile) {
        printf("Cant open File\n");

        return -1;
    }
    yyin = myfile;
    while(yylex());
}