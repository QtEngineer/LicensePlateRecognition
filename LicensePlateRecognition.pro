QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    recognizer.cpp

HEADERS += \
    mainwindow.h \
    recognizer.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH+=E:\caffe-master\caffe-master\src
INCLUDEPATH+=E:\caffe-master\caffe-master\include
INCLUDEPATH+=E:\thirdparty
INCLUDEPATH+=E:\NVIDIAGPUComputingToolkit\CUDA\v11.1\include
INCLUDEPATH+=E:\NVIDIAGPUComputingToolkit\CUDA\v11.1\src

LIBS+=-LE:\thirdparty\lib64-msvc-14.0\
-llibboost_date_time-vc140-mt-gd-1_61

INCLUDEPATH+=E:\openCV\opencv\build\include
CONFIG(debug, debug|release): {
LIBS += -LE:\openCV\opencv\build\x64\vc15\lib \
-lopencv_world3412d
} else:CONFIG(release, debug|release): {
LIBS += -LE:\openCV\opencv\build\x64\vc15\lib \
-opencv_world3412
}
