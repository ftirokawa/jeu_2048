#ifndef BOX_H
#define BOX_H

#include <sstream>
#include <string>

using namespace std;

class Box
{
public:
    Box(int val = 0, string couleur = "#ccc0b4");
    void ChangeVal ();
    void changeCouleur();

    int getVal();
    void setVal(int valeur);
    string getCouleur();
    void increment(int valeur);
    friend ostream& operator <<(ostream &s, const Box &A);

private:
    int val;
    string couleur;

};

#endif // BOX_H
