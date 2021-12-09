%{
/*
*   Se incluyen las cabeceras necesarias, en este caso iostream se encarga de controlar la lectura y escritura de los flujos estandar y string sirve para controlar y manejar las cadenas
*/
#include <iostream>
#include <string>

#include "Sintactico.tab.h" //Se incluye el archivo que genera bison, para usar uso de los tokens
%}

%option c++
%option outfile="Scanner.cpp"
%option yyclass="C_1::Scanner"
%option case-insensitive

ENT [0-9]+
DECIM [0-9]*\.[0-9]+(e[0-9]+)?
ID [A-Za-z][A-Za-z0-9_]*
CAD \"(\\.|[^"\\])*\"
ESP [ \t\n\r]

%%
";"         {return PYC;}
"{"         {return LLAVE_D;}
"}"         {return LLAVE_I;}
"("         {return PAR_D;}
")"         {return PAR_I;}
","         {return COMA;}
"="         {return IGUAL;}
"."         {return PUNTO;}
"+"         {return MAS;}
"-"         {return MENOS;}
"*"         {return MULT;}
"/"         {return DIV;}
"||"        {return OR;}
"&&"        {return AND;}
"<"         {return MENOR;}
">"         {return MAYOR;}
"!="        {return DIF;}
"=="        {return D_IGUAL;}
">="        {return MAY_IG;}
"<="        {return MEN_IG;}
"if"        {return IF;}
"else"      {return ELSE;}
"while"     {return WHILE;}
"do"        {return DO;}
"char"      {return CHAR;}
"int"       {return INT;}
"float"     {return FLOAT;}
"double"    {return DOUBLE;}
"struct"    {return STRUCT;}
"void"      {return VOID;}
"print"     {return PRINT;}
"scan"      {return SCAN;}
"break"     {return BREAK;}
"return"    {return RETURN;}

{ENT}   {return NUMERO_ENT;}
{DECIM} {return NUMERO_DEC;}
{ID}    {return ID;}
{CAD}   {return CADENA;}
{ESP}   {}

.       {cout<<"ERROR LEXICO"<<yytext<<endl;}

%%

int yyFlexLexer::yywrap(){
    return 1;
}