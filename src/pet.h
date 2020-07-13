#ifndef PET_H
#define PET_H

#include <QObject>

class Pet : public QObject
{
    Q_OBJECT
public:
    Pet() {

    }

    virtual QString talk() {return "vai vai vai";}

};

#endif // PET_H
