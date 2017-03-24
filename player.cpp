#include<player.h>
#include<card.h>
#include<minion.h>
#include<QDebug>

Player::Player(QList<Card*> *initdeck) {
    if(initdeck == NULL) {
        m_deck.clear();
        for(int i = 0; i < DECKNUM; i++) {
            m_deck.append(new Card(cardtable[0]));
        }
    } else {
        m_deck = *initdeck;
    }
    m_hand.clear();
    drawCard(3);
    m_mana = new Mana();
    m_health = 30;
    m_armor = 30;
    m_hero = "Jaina";
    m_choosedstatus = "none";
    m_promptstatus = "none";
}

QList<Card*>& Player::deck(){
    return m_deck;
}

QList<Card*>& Player::hand(){
    return m_hand;
}

QList<Minion*>& Player::minions(){
    return m_minions;
}

Mana* Player::mana() {
    return m_mana;
}

QString Player::hero() const {
    return m_hero;
}

int Player::armor() const {
    return m_armor;
}

int Player::health() const {
    return m_health;
}

int Player::attack() const {
    return m_attack;
}

void Player::drawCard(int number) {
    for(int i = 0 ; i < number; i++) {
        if(m_hand.count() >= 10) {
            m_deck.pop_back();
        } else {
            m_hand.append(m_deck.back());
            m_deck.pop_back();
        }
    }
}

bool Player::chooseHand(int index) {
    if(m_mana->full() <  m_hand[index]->cost)
        return false;
    return true;
}

bool Player::playCard(Card *card, Player* enemy, QString targettype, Minion* target,int position) {
    this->m_mana-=card->cost;
    if(!card->checktarget(target))return false;
    card->effect(this,enemy,card->name,targettype,target,position);
    return true;
}

void Player::addMinion(int index, Minion *minion){
    m_minions.insert(index,minion);
    return;
}

void Player::cancelChoose(){

    m_choosedstatus = "none";
    m_promptstatus = "none";
}

bool Player::hurt(int damage) {
    m_health -= damage;
    if(m_health <= 0) {
        return true;
    }
    return false;
}
