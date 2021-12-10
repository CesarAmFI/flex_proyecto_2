#ifndef __SCANNER_HPP__
#define __SCANNER_HPP__ //Se define SCANNER_HPP, si es que no esta definido aun

#if !defined(yyFlexLexerOnce) //Si no se ha definido yyFlexLexerOnce, incluye el archivo FlexLexer.h
#include <FlexLexer.h>
#endif

namespace C_1
{

    class Scanner : public yyFlexLexer //Se define la clase Scanner
    {
    public:
        Scanner(std::istream *in) : yyFlexLexer(in){}; //Definimos el constructor de escaner, con la función yyFlexLexer

        using FlexLexer::yylex;
        virtual int yylex();

    private:
        const int ERROR = -1; //Se define el valor de ERROR
    };

}

#endif /* END __SCANNER_H__ */