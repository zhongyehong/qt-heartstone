#ifndef PLAYER_H
#define PLAYER_H


#include<definition.h>
#include<qqmllist.h>
#include<mana.h>
#include<minion.h>
#include<card.h>


class Card;
class Minion;
class Player  {

public:
    Player(QList<Card*> *initdeck = NULL);

    QList<Card*>& deck();
    QList<Card*>& hand();
    QList<Minion*>& minions();
    Mana* mana() ;
    QString hero() const;
    int health() const;
    int armor() const;
    int attack() const;

    void drawCard(int number);
    bool chooseHand(int index);
    bool chooseMinion(int index);
    bool playCard(Card *card, Player* enemy, QString targettype, Minion* target, int position);
    void addMinion(int index,Minion *minion);
    void cancelChoose();
    bool hurt(int damage);


private:
    QList<Card*> m_deck;
    QList<Card*> m_hand;
    QList<Minion*> m_minions;
    Mana* m_mana;
    QString m_hero;
    int m_health;
    int m_armor;
    int m_attack;
    QString m_choosedstatus;
    int m_choosedindex;
    QString m_promptstatus;


};

#endif // PLAYER_H
