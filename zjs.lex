%{
  #include <stdio.h>

%}

%%

(end)          { printf("END %s\n", yytext); }
(;)            { printf("END_STATEMENT %s\n", yytext); }
(point)        { printf("POINT %s\n", yytext); }
(line)         { printf("LINE %s\n", yytext); }
(circle)       { printf("CIRCLE %s\n", yytext); }
(rectangle)    { printf("RECTANGLE %s\n", yytext); }
(setColor)     { printf("SET_COLOR %s\n", yytext); }
[0-9]+         { printf("INT %s\n", yytext); }
[0-9]+\.[0-9]+ { printf("FLOAT %s\n", yytext); }
[\t|\s|\n]     { ; }
.*             { printf("ERROR %s ON LINE %d\n", yytext, yylineno); }
%%

  int main(int argc, char** argv ){
    yylex();
}
