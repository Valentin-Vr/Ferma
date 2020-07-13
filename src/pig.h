#ifndef PIG_H
#define PIG_H

#include <QObject>

#include "pet.h"

class Pig : public Pet
{
public:
    Pig(){}

    virtual QString talk()  {return "hru hru hru";}
};

#endif // PIG_H
