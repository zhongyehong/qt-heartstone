#ifndef PLAYER_H
#define PLAYER_H

#include<card.h>
#include<definition.h>
#include<qqmllist.h>
#include<mana.h>

class Player  {

public:
    Player(QList<Card*> *initdeck = NULL);

    QList<Card*>& deck();
    QList<Card*>& hand();
    Mana* mana() ;
    QString hero() const;
    int health() const;
    int armor() const;
    int attack() const;
    QString choosedstatus() const { return m_choosedstatus; }
    QString promptstatus() const { return m_promptstatus; }

    void drawCard(int number);
    QString chooseHand(int index);
   // QString choosemonster(init index);
    void cancelChoose();
    QString playMonster(int index);
    bool hurt(int damage);


private:
    QList<Card*> m_deck;
    QList<Card*> m_hand;
    //QList<Monster*> m_monsters;
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
