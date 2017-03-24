#include<card.h>
#include"player.h"
#include"minion.h"

std::vector<Card> cardtable;

int Card::getcost() const {
    return cost;
}
QString Card::getname() const {
    return name;
}

QString Card::gettarget() const {
    return target;
}
void testceffect(Player *myself, Player *enemy, QString name, QString targettype, Minion *target, int position){
    myself->addMinion(position,new Minion(1,1,name,testdeathrattle,testeffect));
    return;
}
void inittable() {
    cardtable.push_back(Card(1,"Argent_Squire","b_none",checkSuccess,testceffect));
    return;
}

