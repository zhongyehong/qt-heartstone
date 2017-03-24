#include <QGuiApplication>
#include <QtQml>
#include <QQmlApplicationEngine>
#include <QString>
#include <mana.h>
#include <player.h>
#include <card.h>
#include <wrapper.h>
#include <minion.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qRegisterMetaType<Mana>("Mana");
    qmlRegisterUncreatableType<Mana,1>("Hearthstone.Mana",1,0,"Mana","error message");
    qmlRegisterUncreatableType<Minion,1>("Hearthstone.Minion",1,0,"Minion","error message");
    qmlRegisterUncreatableType<Card,1>("Hearthstone.Card",1,0,"Card","error message");
    qmlRegisterType<Wrapper>("Hearthstone.Wrapper",1,0,"Wrapper");

    inittable();
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
