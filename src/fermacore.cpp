#include "fermacore.h"

#include "pet.h"
#include "cock.h"
#include "cow.h"
#include "pig.h"

FermaCore::FermaCore()
{

}

void FermaCore::initPet(int name) {
    switch (name){
    case COCK:
        m_pet = new Cock;
        break;
    case COW:
        m_pet = new Cow;
        break;
    case PIG:
        m_pet = new Pig;
        break;
    }
}

QString FermaCore::animalVoice(const QString &animalName)
{
    int name;
    if (animalName == "Петушок") {
        name = 0;
    }
    if (animalName == "Мурка") {
        name = 1;
    }
    if (animalName == "Хрюша") {
        name = 2;
    }
    initPet(name);
    return m_pet->talk();
}
