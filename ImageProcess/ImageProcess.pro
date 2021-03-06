#-------------------------------------------------
#
# Project created by QtCreator 2018-02-28T20:36:39
#
#-------------------------------------------------

QT       += core gui multimedia multimediawidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ImageProcess
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


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    dehaze.cpp \
    detect.cpp \
    test.cpp \
    lssd.cpp \
    gmm.cpp \
    movingod.cpp \
    tracker.cpp \
    feature.cpp \
    common.cpp\
    face.cpp \
    faceview.cpp \
    stereomatch.cpp


HEADERS += \
        mainwindow.h \
    dehaze.h \
    detect.h \
    test.h \
    lssd.h \
    gmm.h \
    movingod.h \
    tracker.h \
    feature.h \
    common.h\
    face.h \
    faceview.h \
    stereomatch.h


FORMS += \
        mainwindow.ui \
    faceview.ui \
    stereomatch.ui


TRANSLATIONS = ImageProcess_CN.ts

RC_ICONS += favicon.ico

RESOURCES += \
    resources.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Libs/opencv/x64/vc15/lib/ -lopencv_world340
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Libs/opencv/x64/vc15/lib/ -lopencv_world340d

INCLUDEPATH += $$PWD/Libs/opencv/include
DEPENDPATH += $$PWD/Libs/opencv/include



