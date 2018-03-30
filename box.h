#ifndef BOX_H
#define BOX_H

#include <sstream>
#include <string>

using namespace std;

class Box
{
public:
    Box(int id = 0, int x=0, int y=0, int val = 0, string couleur = "#ccc0b4");
    void ChangeVal ();
    void changeCouleur();

    int getVal();
    void setVal(int valeur);
    string getCouleur();
    void increment(int valeur);
    friend ostream& operator <<(ostream &s, const Box &A);

    int getX();
    void setX(int x);
    int getY();
    void setY(int y);
    int getID();
    void setID(int id);

private:
    int id;
    int val;
    string couleur;
    int x;
    int y;

};

#endif // BOX_H
