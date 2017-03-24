#include<wrapper.h>
#include<minion.h>
#include<card.h>

Wrapper::Wrapper(QObject *parent)
    :QObject(parent){
    player[0] = NULL;
    player[1] = new Player();
    player[2] = new Player();
    currentplayer = 1;
}

QQmlListProperty<Card> Wrapper::player1_hand(){
    return QQmlListProperty<Card>(this,player[1]->hand());
}

QQmlListProperty<Card> Wrapper::player2_hand(){
    return QQmlListProperty<Card>(this,player[2]->hand());
}


void Wrapper::drawCard(int curplayer,int number) {
    player[curplayer]->drawCard(number);
    emit player_handChanged();
}

void Wrapper::nextTurn() {
    int nextplayer = 3 - currentplayer;
    player[nextplayer]->mana()->newturn();
    emit player_manaChanged();
    drawCard(nextplayer,1);
    emit player_handChanged();
    currentplayer = nextplayer;
}

Mana* Wrapper::player1_mana() {
    return player[1]->mana();
}
Mana* Wrapper::player2_mana() {
    return player[2]->mana();
}

QString Wrapper::gameStatus() {
    return m_gameStatus;
}
