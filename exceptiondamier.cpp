#include "exceptiondamier.h"

ExceptionDamier::ExceptionDamier(int borne_sup, int borne_inf, int value, string file, string fctname) throw()
{
    this->borne_sup = borne_sup;
    this->borne_inf = borne_inf;
    this->value = value;
    this->file = file;
    this->fctname = fctname;

    error = "Erreur sur l utilisation de Damier\n";
    error += "Borne superieure : " + to_string(borne_sup) + "\n";
    error += "Borne inferieure : " + to_string(borne_inf) + "\n";
    error += "Valeur rejectee : " + to_string(value) + "\n";
    error += "Fichier : " + file + "\n";
    error += "Fonction : " + fctname + "\n";

}

const char* ExceptionDamier::what() const throw() // On masque what pour donner une chaine de caractères avec la description de l'erreur
{
    return error.c_str();
}
