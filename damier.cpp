#include "damier.h"

Damier::Damier(int nb_lignes, int nb_colonnes, int borne_inf, int borne_sup, int valInit, QObject *parent) : QObject(parent)
{

    Redim(nb_lignes, nb_colonnes, borne_inf, borne_sup);

    Remplir (valInit);
}

Damier::Damier(const Damier &copier): QObject(copier.parent()){
    int lignes = copier.nb_lignes;
    int colonnes = copier.nb_colonnes;
    int borne_inf = copier.borne_inf;
    int borne_sup = copier.borne_sup;

    Redim(lignes, colonnes, borne_inf, borne_sup); // On alloue de la mémoire

    for (int i =0; i<lignes; i++){
        for(int j=0; j<colonnes;j++){
//            cout << copier.mat[i][j] << " ";
            mat[i][j] = copier.mat[i][j]; // On copie les valeurs du ancien tableau
        }
//        cout << endl;
    }
}

Damier::~Damier(){
    if (mat != NULL){
        for(int i = 0; i<nb_lignes; i++){
            delete [] mat[i];
        }
        delete [] mat;
        mat = NULL;
    }
}

Damier& Damier::operator=(const Damier &R){
    if (this != &R){ // Auto-référence
        int lignes = R.nb_lignes;
        int colonnes = R.nb_colonnes;
        int borne_inf = R.borne_inf;
        int borne_sup = R.borne_sup;

        Redim(lignes, colonnes, borne_inf, borne_sup); // On alloue de la mémoire

        for (int i=0; i<lignes; i++){
            for(int j=0; j<colonnes;j++){
                mat[i][j] = R.mat[i][j]; // On copie les valeurs du ancien tableau
            }
        }
    }
    return *this;
}

void Damier::Remplir(int valInit){
    if (valInit > borne_sup || valInit < borne_inf){
        string file(__FILE__);
        string function(__PRETTY_FUNCTION__);
        ExceptionDamier e(borne_sup, borne_inf, valInit, file, function);
        throw  (e);
    }

    for (int i=0; i<nb_lignes; i++){
        for(int j=0; j<nb_colonnes;j++){
            mat[i][j] = Box(valInit);
        }
    }
    return;
}

void Damier::Set(int i, int j, int val){
    if (val > borne_sup || val < borne_inf){
        string file(__FILE__);
        string function(__PRETTY_FUNCTION__);
        ExceptionDamier e(borne_sup, borne_inf, val, file, function);
        throw  (e);
    }

    if (i<nb_lignes && j<nb_colonnes && i>=0 && j>=0){
        mat[i][j] = Box(val);
    } else {
        throw -1;
    }
    return;
}
void Damier::Print(){
    cout << "Le tableau est : " << endl;
    for (int i=0; i<nb_lignes; i++){
        for(int j=0; j<nb_colonnes;j++){
            cout <<mat[i][j] << " ";
        }
        cout << endl;
    }
    cout << "Borne inferieur : " << borne_inf << endl;
    cout << "Borne superieur : " << borne_sup << endl;
    cout <<endl;
    return;
}

void Damier::Redim(int lignes, int colonnes, int borne_inf, int borne_sup){
    Free();

    Alloc(lignes, colonnes, borne_inf, borne_sup);

    return;
}

void Damier::Alloc(int lignes, int colonnes, int borne_inf, int borne_sup){
    mat = new Box *[lignes];
    for (int i=0; i<lignes; i++){
        mat[i] = new Box [colonnes];
    }
    this->nb_lignes = lignes;
    this->nb_colonnes = colonnes;
    this->borne_sup = borne_sup;
    this->borne_inf = borne_inf;

    Remplir(0);
    return;
}

void Damier::Free(){
    if (mat != NULL){
        for(int i = 0; i<nb_lignes; i++){
            delete [] mat[i];
        }
        delete [] mat;
        mat = NULL;
    }
    return;
}
/*
DamierExc DamierExc::operator+(const DamierExc &B){
    DamierExc C(*this); // On crée un nouveau objet DamierDyn idéntique a A
    // Et après on somme B à cette copie pour donner une resultat.
    if (C.nb_lignes == B.nb_lignes && C.nb_colonnes == B.nb_colonnes){
        for(int i =0; i<C.nb_lignes; i++){
            for(int j=0; j<C.nb_colonnes;j++){
                C.mat[i][j] += B.mat[i][j];
            }
        }
        C.borne_inf = C.borne_inf + B.borne_inf;
        C.borne_sup = C.borne_sup + B.borne_sup;

    } else {
        cout << endl << __PRETTY_FUNCTION__ << " dimensions différentes" << endl; // Pretty function donne le nom de la fonction
        exit(1); // Erreur
    }
    return C;
}
*/
Damier& Damier::operator+=(int val){

    for(int i =0; i<this->nb_lignes; i++){
        for(int j=0; j<this->nb_colonnes;j++){
            this->mat[i][j].increment(val);
        }
    }
    return *this;
}

ostream& operator <<(ostream &s, const Damier &A){
    s <<endl;
    s << "Le tableau est : " << endl;
    for (int i=0; i<A.nb_lignes; i++){
        for(int j=0; j<A.nb_colonnes;j++){
            s <<A.mat[i][j] << " ";
        }
        s << endl;
    }
    s << "Borne inferieur : " << A.borne_inf << endl;
    s << "Borne superieur : " << A.borne_sup << endl;
    s <<endl;
    return s;
}

QString Damier::getBoxVal(){
    return QString::number(mat[1][1].getVal());
}
