CONFIG += c++98

TEMPLATE = app
TARGET = qt4qml

QT += core gui declarative

SOURCES += main.cpp \
    backend.cpp

RESOURCES += resources.qrc \



HEADERS += \
 \#    mainwindow.h
    backend.h

FORMS += \
#    mainwindow.ui

DISTFILES += \
    MainWindow.qml \
