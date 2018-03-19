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
//    qRegisterMetaType<QString**>("QString**");
    engine.rootContext()->setContextProperty("damier", &test);
    engine.load(QUrl(QStringLiteral("qrc:/jeu_4_4.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
