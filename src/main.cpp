#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "WatchDirPath.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QString mainpath = WATCH_DIR_PATH;
    mainpath = mainpath.prepend("file:").append("/main.qml");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
