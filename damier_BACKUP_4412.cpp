#include "damier.h"

Damier::Damier(int nb_lignes, int nb_colonnes, int borne_inf, int borne_sup, QObject *parent) : QObject(parent)
{

    Redim(nb_lignes, nb_colonnes, borne_inf, borne_sup);
    pontuation=0;
    best=0;
    controle = 0;
    fin_du_jeu=false;
    emit boxValDemandee();
    emit couleurDemandee();
    emit score_changed();
    emit best_changed();
    emit boxXDemandee();
    emit boxYDemandee();
    emit controleChange();
    emit game_is_over();


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
            mat[i][j] = Box(4*i+j,(j*100 +10),(i*100 +10),valInit);
        }
    }
    emit boxValDemandee();
    emit couleurDemandee();
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
        mat[i][j] = Box(mat[i][j].getID(), j*100+10, i*100+10,val);
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

QList<QString> Damier::getBoxVal(){
    QList<QString> valVect;

    for (int i= 0; i<nb_lignes*nb_colonnes; i++){
        valVect.append(QString(""));
    }

    // Prise des valeurs à partir des box
    for (int i =0; i<nb_lignes; i++){
        for (int j=0; j<nb_colonnes; j++){
            if (mat[i][j].getVal() != 0){
                valVect[mat[i][j].getID()] = QString::number(mat[i][j].getVal());
            } else {
                valVect[mat[i][j].getID()] = (QString("0"));
            }
        }
    }

    return valVect;
}

QList<QString> Damier::getCouleur(){
    QList<QString> colVect;

    for (int i= 0; i<nb_lignes*nb_colonnes; i++){
        colVect.append(QString(""));
    }

    // Prise des valeurs à partir des box
    for (int i =0; i<nb_lignes; i++){
        for (int j=0; j<nb_colonnes; j++){
            if (mat[i][j].getVal() != 0){
                colVect[mat[i][j].getID()] = QString::fromStdString(mat[i][j].getCouleur());
            }
        }
    }
     return colVect;
}

/*La méthode mouvement a été codé en 3 étapes
1) Il y d'abord le mouvement de toutes les boxes existantes dans le damier
2) Après les fusions sont réalisées.
3) Finalement la nouvelle box 2 ou 4 est ajouté
*/
void Damier::mouvement(int direction){

    //1) Mouvement des boxes
    // 4 situations : mouvement vers gauche, droite, haut ou bas
    switch (direction) {
    case 1:
        mouvementHaut();
        break;
    case 2:
        mouvementBas();
        break;
    case 3:
        mouvementGauche();
        break;
    case 4:
        mouvementDroite();
        break;
    default:
        break;
    }

    //3) Instantiation aléatoire d'une box à valeur initial 2 ou 4
    srand(time(NULL));
    int i, j, rarete;
    rarete = rand()%10;
    int controle = 0;
    bool remplit = damierRemplit();
    while (controle ==0 && remplit != 1){
        i = rand()%4; // des indices de 0 à 3
        j = rand()%4;

        if (mat[i][j].getVal() == 0 && rarete == 9){
            mat[i][j] = Box(mat[i][j].getID(), j*100+10, i*100+10,4);
            add_score(mat[i][j].getVal());
            controle = 1;
        } else{
            if(mat[i][j].getVal() == 0){
                mat[i][j] = Box(mat[i][j].getID(), j*100+10, i*100+10,2);
                add_score(mat[i][j].getVal());
                controle=1;
            }
        }
    }
    if(remplit){
        fin_du_jeu=true;
    }
    emit boxValDemandee();
    emit couleurDemandee();
    emit score_changed();
    emit best_changed();

    //    emit boxXDemandee();
    //    emit boxYDemandee();
    //    emit controleChange();


    emit game_is_over();


}

bool Damier::damierRemplit(){
    bool remplit = 1;
    for (int i=0; i<4; i++){
        for (int j=0; j<4; j++){
            if (mat[i][j].getVal() == 0){
                remplit = 0;
            }
        }
    }

    return remplit;
}

bool ** Damier::initialisationMatrice(){
    bool **matrice;
    matrice = new bool*[4];
    for (int i=0; i<4; i++){
            matrice[i] = new bool[4];
    }
    for (int i=0; i<4; i++){
        for (int j=0; j<4; j++){
            matrice[i][j] = 0;
        }
    }
    return matrice;
}

void Damier::mouvementHaut(){
    int x,y; // position dans la grille de la box étudié
    // Ce boolean indique si la box d'une position donnée a été fusioné lors de cet appel ou pas
    bool **fusion = initialisationMatrice();
    Box aux;

    for (int i=0; i<4; i++){
        for (int j=0; j<4; j++){
            x = i;
            y = j;
            for (int w=(i-1); w>=0; w--){ // Il va regarder les lignes au-dessous de la ligne étudié "i"
                // Si la position dans la même colonnes, mais de la ligne au-dessous est libre, il mouvemente la box vers cette position
                if (mat[w][j].getVal() == 0){
                    aux = mat[w][j];
                    mat[w][j] = mat[x][y];
                    mat[w][j].setX(j*100+10);
                    mat[w][j].setY(w*100+10);
                    mat[x][y] = aux; // Création d'une nouvelle box et libération de l'espace
                    mat[x][y].setX(y*100+10);
                    mat[x][y].setY(x*100+10);
                    x = w; // la position change
                } else{ // Sinon si la box a la même valeur que la box en mouvement
                    if (mat[w][j].getVal() == mat[x][y].getVal() && fusion[w][j] == 0 && fusion[x][y] == 0){ // 3) Fusion
                        mat[w][j].ChangeVal();
                        mat[w][j].changeCouleur();
                        mat[x][y] = Box(mat[x][y].getID(), y*100+10, x*100+10);
                        add_score(mat[w][j].getVal());
                        fusion[w][j] = 1;
                        x = w;
                    }
                }

            }
        }
    }
}

void Damier::mouvementBas(){
    int x,y; // position dans la grille de la box étudié
    // Ce boolean indique si la box d'une position donnée a été fusioné lors de cet appel ou pas
    bool **fusion = initialisationMatrice();
    Box aux;

    for (int i=3; i>=0; i--){
        for (int j=0; j<4; j++){
            x = i;
            y = j;
            for (int w=(i+1); w<4; w++){ // Il va regarder les lignes au-dessous de la ligne étudié "i"
                // Si la position dans la même colonnes, mais de la ligne au-dessous est libre, il mouvemente la box vers cette position
                if (mat[w][j].getVal() == 0){
                    aux = mat[w][j];
                    mat[w][j] = mat[x][y];
                    mat[w][j].setX(j*100+10);
                    mat[w][j].setY(w*100+10);
                    mat[x][y] = aux; // Création d'une nouvelle box et libération de l'espace
                    mat[x][y].setX(y*100+10);
                    mat[x][y].setY(x*100+10);
                    x = w; // la position change
                } else{ // Sinon si la box a la même valeur que la box en mouvement
                    if (mat[w][j].getVal() == mat[x][y].getVal() && fusion[w][j] == 0  && fusion[x][y] == 0){ // 3) Fusion
                        mat[w][j].ChangeVal();
                        mat[w][j].changeCouleur();
                        mat[x][y] = Box(mat[x][y].getID(), y*100+10, x*100+10);
                        add_score(mat[w][j].getVal());
                        fusion[w][j] = 1;
                        x = w;
                    }
                }

            }
        }
    }
}

void Damier::mouvementGauche(){
    int x,y; // position dans la grille de la box étudié
    // Ce boolean indique si la box d'une position donnée a été fusioné lors de cet appel ou pas
    bool **fusion = initialisationMatrice();
    Box aux;

    for (int j=0; j<4; j++){
        for (int i=0; i<4; i++){
            x = i;
            y = j;
            for (int w=(j-1); w>=0; w--){ // Il va regarder les lignes au-dessous de la ligne étudié "i"
                // Si la position dans la même colonnes, mais de la ligne au-dessous est libre, il mouvemente la box vers cette position
                if (mat[i][w].getVal() == 0){
                    aux = mat[i][w];
                    mat[i][w] = mat[x][y];
                    mat[i][w].setX(w*100+10);
                    mat[i][w].setY(i*100+10);
                    mat[x][y] = aux; // Création d'une nouvelle box et libération de l'espace
                    mat[x][y].setX(y*100+10);
                    mat[x][y].setY(x*100+10);
                    y = w; // la position change
                } else{ // Sinon si la box a la même valeur que la box en mouvement
                    if (mat[i][w].getVal() == mat[x][y].getVal() && fusion[i][w] == 0  && fusion[x][y] == 0){ // 3) Fusion
                        mat[i][w].ChangeVal();
                        mat[i][w].changeCouleur();
                        mat[x][y] = Box(mat[x][y].getID(), y*100+10, x*100+10);
                        add_score(mat[w][j].getVal());
                        fusion[i][w] = 1;
                        y = w;
                    }
                }

            }
        }
    }
}

void Damier::mouvementDroite(){
    int x,y; // position dans la grille de la box étudié
    // Ce boolean indique si la box d'une position donnée a été fusioné lors de cet appel ou pas
    bool **fusion = initialisationMatrice();
    Box aux;

    for (int j=3; j>=0; j--){
        for (int i=0; i<4; i++){
            x = i;
            y = j;
            for (int w=(j+1); w<4; w++){ // Il va regarder les lignes au-dessous de la ligne étudié "i"
                // Si la position dans la même colonnes, mais de la ligne au-dessous est libre, il mouvemente la box vers cette position
                if (mat[i][w].getVal() == 0){
                    aux = mat[i][w];
                    mat[i][w] = mat[x][y];
                    mat[i][w].setX(w*100+10);
                    mat[i][w].setY(i*100+10);
                    mat[x][y] = aux; // Création d'une nouvelle box et libération de l'espace
                    mat[x][y].setX(y*100+10);
                    mat[x][y].setY(x*100+10);
                    y = w; // la position change
                } else{ // Sinon si la box a la même valeur que la box en mouvement
                    if (mat[i][w].getVal() == mat[x][y].getVal() && fusion[i][w] == 0  && fusion[x][y] == 0){ // 3) Fusion
                        mat[i][w].ChangeVal();
                        mat[i][w].changeCouleur();
                        mat[x][y] = Box(mat[x][y].getID(), y*100+10, x*100+10);
                        add_score(mat[w][j].getVal());
                        fusion[i][w] = 1;
                        y = w;
                    }
                }

            }
        }
    }
}

QString Damier::readScore()
{
    return QString::number(pontuation);
}

void Damier::add_score(int value){
    pontuation+=value;
    new_best(pontuation);
}



QString Damier::readBest()
{
    return QString::number(best);
}



void Damier::new_best(int value){
    if(value>best)
    {
        best=value;
    }
}


void Damier::new_game(){
    Redim(nb_lignes, nb_colonnes, borne_inf, borne_sup);
    pontuation=0;
    fin_du_jeu=false;
    emit boxValDemandee();
    emit couleurDemandee();
    emit score_changed();
    emit best_changed();
    emit game_is_over();
}

bool Damier::readGameOver(){
    return fin_du_jeu;
}

QList<int> Damier::getBoxX(){
    QList<int> posVect;

    for (int i= 0; i<nb_lignes*nb_colonnes; i++){
        posVect.append(0);
    }

    // Prise des valeurs à partir des box
    for (int i =0; i<4; i++){
        for (int j=0; j<4; j++){
            posVect[mat[i][j].getID()] = mat[i][j].getX();
        }
    }
    return posVect;
}

QList<int> Damier::getBoxY(){
    QList<int> posVect;

    for (int i= 0; i<nb_lignes*nb_colonnes; i++){
        posVect.append(0);
    }

    // Prise des valeurs à partir des box
    for (int i =0; i<4; i++){
        for (int j=0; j<4; j++){
            posVect[mat[i][j].getID()] = mat[i][j].getY();
        }
    }
    return posVect;
}

int Damier::controleMethode(){
    if(controle == 0){
        controle = 1;
    } else{
        controle = 0;
    }
    return controle;
}

