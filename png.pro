TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

unix:!macx: LIBS += -lpng

unix:!macx: LIBS += -lpng

unix:!macx: LIBS += -L$$PWD/../../../usr/lib/nvidia-375/ -lOpenGL

INCLUDEPATH += $$PWD/../../../usr/lib/nvidia-375
DEPENDPATH += $$PWD/../../../usr/lib/nvidia-375

unix:!macx: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lGLEW

INCLUDEPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu

unix:!macx: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lglfw

INCLUDEPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu

unix:!macx: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lopencv_core

INCLUDEPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/release/ -lopencv_core
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/debug/ -lopencv_core
else:unix: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lopencv_core

INCLUDEPATH += $$PWD/../../../usr/include/opencv2
DEPENDPATH += $$PWD/../../../usr/include/opencv2

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/libopencv_core.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/libopencv_core.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/opencv_core.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/opencv_core.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/libopencv_core.a

unix:!macx: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lopencv_highgui

INCLUDEPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu

unix:!macx: PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/libopencv_highgui.a
