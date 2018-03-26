#ifndef DAMIER2048_H
#define DAMIER2048_H
#include<damier.h>

using namespace std;

class Damier2048 : public Damier
{
public:

    Q_PROPERTY(QString bestValQML READ readBest NOTIFY best_changed);

    explicit Damier2048();
    void InitJeu ();
    void new_best(int value);


    QString readBest();

signals:
    void best_changed();

private:
    int best;

};

#endif // DAMIER2048_H
