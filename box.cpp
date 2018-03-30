#include "box.h"

Box::Box(int id, int x, int y, int val, string couleur)
{
    this->id = id;
    this->val = val;
    this->couleur = couleur;
    this->x = x;
    this->y = y;
}

void Box::ChangeVal (){
    if (val == 0){
        val = 2;
    } else{
        val = val*2;
    }
}

void Box::changeCouleur(){
    switch (val) {
    case 0:
        couleur = "#ccc0b4";
        break;
    case 2:
        couleur = "#eee4da";
        break;
    case 4:
        couleur = "#ede0c8";
        break;
    case 8:
        couleur = "#f2b179";
        break;
    case 16:
        couleur = "#f59563";
        break;
    case 32:
        couleur = "#f67c5f";
        break;
    case 64:
        couleur = "#f65e3b";
        break;
    case 128:
        couleur = "#ccc0b4";
        break;
    case 256:
        couleur = "#ccc0b4";
        break;
    case 512:
        couleur = "#ccc0b4";
        break;
    case 1024:
        couleur = "#ccc0b4";
        break;
    case 2048:
        couleur = "#ccc0b4";
        break;
    default:
        break;
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

int Box::getX(){
    return x;
}

void Box::setX(int x){
    this->x = x;
    return;
}

int Box::getY(){
    return y;
}

void Box::setY(int y){
    this->y = y;
    return;
}

int Box::getID(){
    return id;
}

void Box::setID(int id){
    this->id = id;
    return;
}

