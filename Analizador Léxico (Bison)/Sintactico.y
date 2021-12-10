%{
    #include <iostream>
    #include <string>
%}

/*
*
*   Declaraciones en Bison
*
*/
/*%union
{
    float real;
    double doble;
    int entero;
}*/

/* En esta parte se debe indicar la produccion con la que inicia nuestra gramatica */
/*start programa*/

/* Se especifican los terminales juntos con sus tipos */
%token PYC
%token LLAVE_D
%token LLAVE_I
%token PAR_D
%token PAR_I
%token COMA
%token IGUAL
%token PUNTO
%token MAS
%token MENOS
%token MULT
%token DIV
%token OR
%token AND
%token MENOR
%token MAYOR
%token DIF
%token D_IGUAL
%token MAY_IG
%token MEN_IG
%token IF
%token ELSE
%token WHILE
%token DO
%token CHAR
%token INT
%token FLOAT
%token DOUBLE
%token STRUCT
%token VOID
%token PRINT
%token SCAN
%token BREAK
%token RETURN
%token <entero> NUMERO_INT
%token <doble> NUMERO_D
%token <real> NUMERO_F
%token ID
%token CADENA
%token ESP

/* Se declaran los no terminales junto con sus tipos */

/*
*
* Declaracion de no terminales
*
*/

/* Se definen las precedencias */

/*
*
* Definición de temporadas
*
*/


/********************
*
* Reglas Gramaticales
*
*********************/