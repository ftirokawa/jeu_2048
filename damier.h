#ifndef DAMIER_H
#define DAMIER_H
#include <iostream>
#include<exceptiondamier.h>
#include <QObject>
#include <box.h>
#include <stdlib.h>
#include <time.h>

using namespace std;

struct state{
    int **matrix;
    int pontuation;
    state *apres;
    state *avant;
};


class Damier : public QObject
{
    Q_OBJECT
public:

    Q_PROPERTY(QList<QString> boxValQML READ getBoxVal NOTIFY boxValDemandee)
    Q_PROPERTY(QList<QString> boxColQML READ getCouleur NOTIFY couleurDemandee)
    Q_PROPERTY(QString scoreValQML READ readScore NOTIFY score_changed)
    Q_PROPERTY(QString bestValQML READ readBest NOTIFY best_changed)
    Q_PROPERTY(QList<int> boxPosXQML READ getBoxX NOTIFY boxXDemandee)
    Q_PROPERTY(QList<int> boxPosYQML READ getBoxY NOTIFY boxYDemandee)
    Q_PROPERTY(int controleQML READ controleMethode NOTIFY controleChange)
    Q_PROPERTY(QString overBoolQML READ readGameOver NOTIFY game_is_over)


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
    void create_new_box();
    void mouvementHaut();
    void mouvementBas();
    void mouvementGauche();
    void mouvementDroite();

    void add_score(int value);
    void new_best(int value);

    void save_state();
    void actualise_state(state *ref);
    void delete_state(state *ref);
    void delete_states_apres();
    void delete_tous_states();
    void compare_state();
    void verify_game_over();
    void debug_matrix();


    QList<QString> getBoxVal();
    QList<QString> getCouleur();
    QString readScore();
    QString readBest();

    QList<int> getBoxX();
    QList<int> getBoxY();

    QString readGameOver();


    Q_INVOKABLE void mouvement(int direction);
    Q_INVOKABLE void new_game();
    Q_INVOKABLE void state_retourner();
    Q_INVOKABLE void state_avancer();

    int controleMethode();


private:
    Box **mat = NULL;
    int nb_lignes;
    int nb_colonnes;
    int borne_sup;
    int borne_inf;
    int pontuation;
    int best;
    int controle;
    bool fin_du_jeu;
    state* dernierSt=NULL;
    state* currentSt=NULL;
    state* premierSt=NULL;
    bool change=false;

signals:
    void boxValDemandee();
    void couleurDemandee();
    void score_changed();
    void best_changed();
    void boxXDemandee();
    void boxYDemandee();
    void controleChange();
    void game_is_over();


public slots:
};


#endif // DAMIER_H
