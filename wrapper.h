#ifndef WRAPPER_H
#define WRAPPER_H

#include<definition.h>
#include<player.h>
#include<card.h>
#include<minion.h>
#include<mana.h>
#include<QObject>
#include<QVariant>

class Wrapper: public QObject {
    Q_OBJECT

public:
    Wrapper(QObject *parent = NULL);
    Q_PROPERTY(QQmlListProperty<Card> player1_hand READ player1_hand NOTIFY player_handChanged)
    Q_PROPERTY(QQmlListProperty<Card> player2_hand READ player2_hand NOTIFY player_handChanged)
    Q_PROPERTY(Mana *player1_mana READ player1_mana NOTIFY player_manaChanged)
    Q_PROPERTY(Mana *player2_mana READ player2_mana NOTIFY player_manaChanged)
    Q_PROPERTY(QString gameStatus READ gameStatus NOTIFY gameStatusChanged)

    QQmlListProperty<Card> player1_hand();
    QQmlListProperty<Card> player2_hand();
    Mana *player1_mana() ;
    Mana *player2_mana() ;
    Q_INVOKABLE void drawCard(int player, int number = 1);
    Q_INVOKABLE void nextTurn();
    Q_INVOKABLE bool chooseHand(int curplayer, int index) { return player[curplayer]->chooseHand(index) ;}
    Q_INVOKABLE void cancelChoose(int curplayer) { player[curplayer]->cancelChoose();}
    //sQ_INVOKABLE bool playCard(Card *card, int curplayer, QString targettype, Minion* target, int position);
    QString gameStatus(); 


signals:
    void player_handChanged();
    void player_manaChanged();
    void gameStatusChanged();


private:
    int currentplayer;
    QString m_gameStatus;
    Player *player[3];
};

#endif // WRAPPER_H
