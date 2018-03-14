#ifndef EXCEPTIONDAMIER_H
#define EXCEPTIONDAMIER_H
#include <exception>
#include <iostream>
#include <sstream>
#include <string>

using namespace std;

class ExceptionDamier : public exception
{
public:
    ExceptionDamier(int borne_sup, int borne_inf, int value, string file, string fctname) throw();
    virtual const char* what() const throw(); // On masque what pour donner une chaine de caractères avec la description de l'erreur

private:
    int borne_inf;
    int borne_sup;
    int value;
    string file;
    string fctname;
    string error;
};

#endif // EXCEPTIONDAMIER_H
