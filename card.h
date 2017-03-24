#ifndef CARD_H
#define CARD_H

#include<qobject.h>
#include<qlist.h>
#include<definition.h>
#include<minion.h>
#include<player.h>
#include<method.cpp>

class Player;
class Minion;

class Card : public QObject{
    Q_OBJECT

public:

    Q_PROPERTY(int cost READ getcost)
    Q_PROPERTY(QString name READ getname)
    Q_PROPERTY(QString target READ gettarget)

    Q_INVOKABLE int getcost() const;
    Q_INVOKABLE QString getname() const;
    Q_INVOKABLE QString gettarget() const;


    int cost;
    QString name;


    //the target of card:
    //1.none:                 Arcane Brilliance
    //2.friendlyMinion:       shadowstep
    //3.enemyMinion:          Corruption
    //4.friendlyCharacter:    Rockbiter Weapon
    //5.enemyCharacter:       Swipe
    //6.Minion:               Shadow Bolt
    //7.Character:            Fireball
    //8.b_none:               Argent Squire
    //9.b_friendlyMinion:     Shattered Sun Cleric
    //10.b_enemyMinion:        Cabal Shadow Priest
    //11.b_friendlyCharacter:
    //12.b_enemyCharacter:
    //13.b_Minion:             Ironbreak Owl
    //14.b_Character:          Earthen Ring Farseer
    QString target;

    bool(*checktarget)(Minion *target);



    void(*effect)(Player *myself, Player *enemy, QString name, QString targettype, Minion *target,int position);
    Card(int cost, QString name, QString target,
         bool(*checktarget)(Minion *target),
         void(*effect)(Player *myself, Player *enemy,QString name, QString targettype, Minion *target, int position),
         QObject *parent = NULL):
        QObject(parent),cost(cost),name(name),target(target),checktarget(checktarget),effect(effect){}
    Card(const Card &card):
        QObject(card.parent()),cost(cost),name(card.name),target(card.target),checktarget(card.checktarget),effect(card.effect){}
};
void testceffect(Player *myself, Player *enemy, QString name, QString targettype, Minion *target, int position);
void inittable();

extern std::vector<Card> cardtable;



#endif // CARD_H
