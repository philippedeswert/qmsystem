QT += testlib
QT -= gui
TEMPLATE = app
QMAKE_CXXFLAGS += -Wall -Wno-psabi

INCLUDEPATH += ../../system ../../../system
#LIBS += -L../../system -L../../../system -lqmsystem2
equals(QT_MAJOR_VERSION, 4): LIBS += -lqmsystem2
equals(QT_MAJOR_VERSION, 5): LIBS += -lqmsystem2-qt5
QMAKE_LIBDIR_FLAGS += -L../../system -L../../../system 
equals(QT_MAJOR_VERSION, 4): target.path = /opt/tests/qmsystem-tests
equals(QT_MAJOR_VERSION, 5): target.path = /opt/tests/qmsystem-qt5-tests
INSTALLS += target
