#include "box.h"

Box::Box(int val, string couleur)
{
    this->val = val;
    this->couleur = couleur;
}

void Box::ChangeVal (){
    if (val == 0){
        val = 2;
    } else{
        val = val*2;
    }
}

int Box::getVal(){
    return val;
}

void Box::setVal(int valeur){
    val = valeur;
    return;
}

void Box::increment(int valeur){
    val += valeur;
    return;
}

string Box::getCouleur(){
    return couleur;
}

ostream& operator <<(ostream& s, const Box &A){
    s <<endl;
    int valeur = A.val;
    string couleur = A.couleur;
    s << "La boîte a pour valeur : " << valeur << endl;
    s << "La boîte a pour couleur : " << couleur << endl;
    s <<endl;
    return s;
}

