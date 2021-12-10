/*
*   Se incluyen lase librerias de c+++ iostream para las entradas y salidas, fstream para poder leer archivos, y Scanner.h para la clase que se define ahi
*/
#include <iostream>
#include <fstream>
#include "Scanner.h"

using namespace std;
using namespace C_1;

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        cout << "Faltan argumentos" << endl;
        return -1;
    }

    filebuf fb; //Se crea un buffer para abrir el archivo

    fb.open(string(argv[1]), ios::in); //Se lee el archivo para entrada de datos

    istream in(&fb); //Se abre el archivo

    Scanner lexer(&in); //Se envia la entrada recibida del archivo al lexer

    int token = lexer.yylex(); //Se recibe el primer token (Su equivalente en entero)

    while (token != 0) //Mientras que el token sea diferente de 0, se repite el ciclo
    {
        cout << token << ". " << lexer.YYText() << endl; // Se imprime el entero que reprenta al token, asi como la parte que cumple con la expresion regular
        token = lexer.yylex();                           //Se optiene el siguiente token
    }

    fb.close(); //Se cierra el archivo
    return 0;
}