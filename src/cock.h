#ifndef COCK_H
#define COCK_H

#include <QObject>

#include "pet.h"

class Cock : public Pet
{
public:
    Cock(){

    }

    virtual QString talk() {return "kuda tah tah"; }
};

#endif // COCK_H
