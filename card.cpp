#include<card.h>
#include"player.h"
#include"minion.h"

Card::Card(QString name, int cost, QString choosed, QObject *parent)
      :QObject(parent),
      m_cardname(name),
      m_cost(cost),
        m_choosed(choosed){
}

/*Card::Card(const Card& card)
    :QObject(card.parent()),
      cardname(card.name()),
       m_cost(card.cost()),
        m_choosed(card.choosed()){
}

Card& Card::operator=(const Card& card) {
    cardname = card.name();
    m_cost = card.cost();
    m_choosed = card.choosed();
    return *this;
}*/

QString Card::name() const {
    return m_cardname;
}

MinionCard::MinionCard(QString name, int cost, QString choosed, int health, int attack, QObject *parent)
    :Card(name,cost,choosed,parent),m_health(health),m_attack(attack){
}

TestMinion::TestMinion(QString name, int cost, QString choosed, int health, int attack, QObject *parent)
    :MinionCard(name,cost,choosed,health,attack,parent){
}

void TestMinion::summon(int index, Player *player){
    player->hurt(2);
}

void TestMinion::summon(int index, Minion *minion) {
    minion->hurt(2);
}
