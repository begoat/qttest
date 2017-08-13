#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "WatchDirPath.h"
#include <QQuickStyle>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QString mainpath = WATCH_DIR_PATH;
    mainpath = mainpath.prepend("file:").append("/main.qml");

    QQuickStyle::setStyle("Material");

    QQmlApplicationEngine engine;
    engine.load(QUrl(mainpath));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
