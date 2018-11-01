%{
    
%}
%option noyywrap
%%
[\t\n ]+ /*ignores all whitespace*/;
^(?i:BEGINING)* |             
^(?i:BODY)*  |              
^(?i:END)*                  { printf("KEYWORD\n");}
[Xx]+                       { printf("capacity\n");}
(?i:MOVE)                   { printf("MOVE\n");}
(?i:TO)                     { printf("TO\n");}
(?i:ADD)                    { printf("ADD\n");}
(?i:INPUT)                  { printf("INPUT\n");}
(?i:PRINT)                  { printf("PRINT\n");}
;                           { printf("SEMICOLON\n");}
[0-9]+                      { printf("Integer\n");}
[A-Za-z][A-Za-z0-9\-]*     { printf("identifier\n");}
\"(\\.|[^"\\])*\"           { printf("Text\n");}
\.                          { printf("Terminate\n");}
.                          ;
%%

#define yywrap() (1)