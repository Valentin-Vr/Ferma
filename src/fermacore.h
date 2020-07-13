#ifndef FERMACORE_H
#define FERMACORE_H

#include <QObject>

#include "cock.h"
#include "cow.h"
#include "pet.h"
#include "pig.h"


class FermaCore : public QObject
{
    Q_OBJECT
public:
    FermaCore();

    enum animals {
        COCK,
        COW,
        PIG
    };

    void initPet(int name);

    Q_INVOKABLE QString animalVoice(const QString &animalName);

private:
    Pet *m_pet = nullptr;
};

#endif // FERMACORE_H
