#include "damier2048.h"
#include <iostream>
#include <QObject>

using namespace std;

Damier2048::Damier2048() : Damier(4, 4, 0, 2048)
{
    InitJeu();
}

// Cette méthode se chargera de remplir le damier pour un début de partie.
void Damier2048::InitJeu(){
    return;
}


QString Damier2048::readBest()
{
    return QString::number(best);
}




void Damier2048::new_best(int value){
    if(value>best)
    {
        best=value;
    }
}


