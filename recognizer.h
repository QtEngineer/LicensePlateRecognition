#ifndef RECOGNIZER_H
#define RECOGNIZER_H

#include <opencv/cv.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <caffe/blob.hpp>
#include <caffe/caffe.hpp>
#include <caffe/solver.hpp>
#include <caffe/layer.hpp>
#include <caffe/layers/memory_data_layer.hpp>
#include <boost/shared_ptr.hpp>

using namespace cv;
using namespace caffe;
class Recognizer
{
public:
    Recognizer();
    static int extractFrames(const String& path_video,const String& path_pic);
private:

};

#endif // RECOGNIZER_H
