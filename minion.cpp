#include "minion.h"

Minion::Minion(MinionCard* card, QObject* parent):
    QObject(parent),
    m_health(card->health()),
    m_cost(card->cost()),
    m_minionname(card->cardname()),
    m_choosed("false"){}

bool Minion::hurt(int dam){
    m_health -= dam;
    if(m_health <= 0) {
        m_health = 0;
        return false;
    }
    return true;
}

QString Minion::name() {
    return m_minionname;
}
