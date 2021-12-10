%{
/*
*   Se incluyen las cabeceras necesarias, en este caso iostream se encarga de controlar la lectura y escritura de los flujos estandar y string sirve para controlar y manejar las cadenas 
*   Asi como Scanner.h y tokens.h para complementar
*/

#include <iostream>   
#include <string>
using namespace std;
    
#include "tokens.h"   //En esa version se incluye tokens.h, que es el que le da valor a los tokens para devolver un entero
#include "Scanner.h"  //Define la clase yyFlexLexer, para complementar el lexer con c++
%}

%option c++    
%option outfile="Scanner.cpp" 
%option yyclass="C_1::Scanner" 
%option case-insensitive 

ENT [0-9]+  
DECI [0-9]*\.[0-9]+(e[0-9]+)?
DOUB [0-9]*\.[0-9]+(e[0-9]+)?(d|D)?
FLOAT_ER [0-9]*\.[0-9]+(e[0-9]+)?(f|F)
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

{ENT}       {return NUMERO_INT;}
{DOUB}      {return NUMERO_D;}
{FLOAT_ER}  {return NUMERO_F;}
{ID}        {return ID;}
{CAD}       {return CADENA;}
{ESP}       {}

.       {cout<<"ERROR LEXICO"<<yytext<<endl;}

%%

int yyFlexLexer::yywrap(){
    return 1;
}