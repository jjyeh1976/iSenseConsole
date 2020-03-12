#-------------------------------------------------
#
# Project created by QtCreator 2020-01-06T18:31:44
#
#-------------------------------------------------

QT       += core gui serialport network serialbus charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = iSenseConsole
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    isense_chart.cpp \
    snode_data_parser.cpp \
    snode_interface.cpp \
    command_server.cpp \
    chartview.cpp \
    ../../SourceRespo/kissfft/kiss_fft.c

HEADERS += \
        mainwindow.h \
    isense_chart.h \
    snode_data_parser.h \
    snode_interface.h \
    command_server.h \
    chartview.h

FORMS += \
        mainwindow.ui \
    chartview.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc

INCLUDEPATH += "D:\SourceRespo\kissfft"