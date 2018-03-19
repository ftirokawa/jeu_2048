#ifndef DAMIER_H
#define DAMIER_H
#include <iostream>
#include<exceptiondamier.h>
#include <QObject>
#include <box.h>
#include <stdlib.h>
#include <time.h>

using namespace std;

class Damier : public QObject
{
    Q_OBJECT
public:

    Q_PROPERTY(QList<QString> boxValQML READ getBoxVal NOTIFY boxValDemandee)
    Q_PROPERTY(QList<QString> boxColQML READ getCouleur NOTIFY couleurDemandee)

    explicit Damier(int nb_lignes, int nb_colonnes, int borne_inf, int borne_sup, QObject *parent = nullptr); // La valeur par défaut est écrite juste dans le fichier .h
    explicit Damier(const Damier &copier); // Constructeur de récopie
    ~Damier(); // Destructeur
    Damier & operator=(const Damier &R); // Opérateur d'affectation
    void Remplir (int valInit);
    void Set(int i, int j, int val);
    void Print();
    void Redim(int lignes, int colonnes, int borne_inf, int borne_sup);

    void Alloc(int lignes, int colonnes, int borne_inf, int borne_sup);
    void Free();

//        DamierExc operator+(const DamierExc &B);
    Damier& operator+=(int val);
    friend ostream& operator <<(ostream &s, const Damier &A);

    virtual void InitJeu() = 0; // Méthode abstraite qui rend la classe abstraite;

    bool damierRemplit();
    bool ** initialisationMatrice();
    void mouvementHaut();
    void mouvementBas();
    void mouvementGauche();
    void mouvementDroite();

    QList<QString> getBoxVal();
    QList<QString> getCouleur();

    Q_INVOKABLE void mouvement(int direction);

private:
    Box **mat = NULL;
    int nb_lignes;
    int nb_colonnes;
    int borne_sup;
    int borne_inf;


signals:
    void boxValDemandee();
    void couleurDemandee();

public slots:
};

#endif // DAMIER_H
