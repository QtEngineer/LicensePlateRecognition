#include "mainwindow.h"

#include <QApplication>

#include "recognizer.h"
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    //MainWindow w;
    //w.show();
    Recognizer::extractFrames("E:\\car_VideoPic\\video\\QQLive20201115154325.mp4","E:\\car_VideoPic\\pic_v1\\");
    return a.exec();
}
