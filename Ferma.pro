QT += quick

CONFIG += c++11

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
        src/cock.cpp \
        src/cow.cpp \
        src/fermacore.cpp \
        src/main.cpp \
        src/pet.cpp \
        src/pig.cpp

RESOURCES += qml/qml.qrc

QML_IMPORT_PATH =

QML_DESIGNER_IMPORT_PATH =

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += src

HEADERS += \
    src/cock.h \
    src/cow.h \
    src/fermacore.h \
    src/pet.h \
    src/pig.h
