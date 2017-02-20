#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <mana.h>
#include <player.h>
#include <card.h>
#include <wrapper.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qRegisterMetaType<Mana>("Mana");
    qmlRegisterUncreatableType<Card,1>("Hearthstone.Card",1,0,"Card","error message");
    //qmlRegisterUncreatableType<Mana,1>("Hearthstone.Mana",1,0,"Mana","error message");
    qmlRegisterType<Wrapper>("Hearthstone.Wrapper",1,0,"Wrapper");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
