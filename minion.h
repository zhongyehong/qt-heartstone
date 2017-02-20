#ifndef MINION_H
#define MINION_H

#include <definition.h>
#include <card.h>
#include <qstring.h>

class Minion : public QObject {
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

};

#endif // MINION_H
