#ifndef DAMIER2048_H
#define DAMIER2048_H
#include<damier.h>
#include <QObject>

using namespace std;

class Damier2048 : public Damier
{
    Q_OBJECT
public:


    explicit Damier2048();
    void InitJeu ();





};

#endif // DAMIER2048_H
