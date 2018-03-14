#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <damier2048.h>

int main(int argc, char *argv[])
{


    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    Damier2048 test;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("damier", &test);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
