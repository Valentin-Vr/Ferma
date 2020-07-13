#ifndef COW_H
#define COW_H

#include <QObject>

#include "pet.h"

class Cow : public Pet
{
public:
    Cow();

    virtual QString talk() {return "muuuuu"; }
};

#endif // COW_H
