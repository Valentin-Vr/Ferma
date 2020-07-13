#ifndef PET_H
#define PET_H

#include <QObject>

class Pet
{
public:
    Pet();

    virtual QString talk() {return "vai vai vai"; }
};

#endif // PET_H
