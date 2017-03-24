#ifndef MINION_H
#define MINION_H

#include <definition.h>
#include <player.h>
#include <qobject.h>
#include <qstring.h>

class Player;
/*class Minion : public QObject {
    Q_OBJECT

public:
    Minion(MinionCard* card, QObject* parent);
    //Card(const Card& card);
    Q_PROPERTY(QString name READ name)

    Card& operator=(const Card&);
    Q_INVOKABLE QString name();

    int cost() const { return m_cost; }
    int health() const { return m_health; }
    //QString minionname() const { return m_minionname; }
    bool hurt(int dam);

    QString choosed() const { return m_choosed; }



private:
    QString m_minionname;
    int m_cost;
    QString m_choosed;
    int m_health;

};*/

class Minion: public QObject {
    Q_OBJECT

public:
    int totalhealth;
    int attack;
    int curhealth;
    QString name;

    void (*deathrattle)(Player *myself, Player *enemy, int position);

    void (*effect)(Player *myserlf, Player *enemy, int position);
    Minion(int totalhealth, int attack, QString name,
           void (*deathrattle)(Player *myself, Player *enemy, int position),
           void (*effect)(Player *myserlf, Player *enemy, int position),
           QObject *parent = NULL):
        QObject(parent),totalhealth(totalhealth),attack(attack),curhealth(totalhealth),name(name),deathrattle(deathrattle),effect(effect){
        }
};


extern std::vector<Minion> miniontable;

void testdeathrattle(Player* myself, Player *enemy, int position);
void testeffect(Player* myself, Player *enemy, int position);


#endif // MINION_H
