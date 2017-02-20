#ifndef CARD_H
#define CARD_H

#include<qobject.h>
#include<qlist.h>
//#include<player.h>
#include<method.cpp>

class Minion;
class Player;
class Card : public QObject{
    Q_OBJECT

public:
    Card(QString name, int cost, QString choosed = "false", QObject *parent = NULL);
   // Card(const Card& card);
    Q_PROPERTY(QString name READ name)

   // Card& operator=(const Card&);
    Q_INVOKABLE QString name() const;

    int cost() const { return m_cost; }
    QString cardname() const { return m_cardname; }
    QString choosed() const { return m_choosed; }



private:
    QString m_cardname;
    int m_cost;
    QString m_choosed;

};

class MinionCard : public Card{
    Q_OBJECT

public:
    MinionCard(QString name, int cost, QString choosed, int health, int attack, QObject *parent = NULL);
    int health() const { return m_health; }
    int attack() const { return m_attack; }

private:
    int m_health;
    int m_attack;
};

class TestMinion: public MinionCard{
    Q_OBJECT

public:
    TestMinion(QString name = "", int cost = 1, QString choosed = "character", int health = 1, int attack = 1, QObject *parent = NULL);

    void summon(int index, Player* player);
    void summon(int index, Minion* minion);
};

#endif // CARD_H
