#ifndef MANA_H
#define MANA_H
#include<qobject.h>
#include<qlist.h>
#include<qmap.h>
#include<qstring.h>


class Mana : public QObject {
    Q_OBJECT

public:
    Mana(QObject *parent = NULL);
    Mana(const Mana& mana);

    Mana& operator=(const Mana&);

    Q_PROPERTY(int empty READ empty NOTIFY manaChanged)
    Q_PROPERTY(int full READ full NOTIFY manaChanged)
    Q_PROPERTY(int total READ total NOTIFY manaChanged)
    Q_PROPERTY(int locked READ locked NOTIFY manaChanged)
    Q_PROPERTY(int locking READ locking NOTIFY manaChanged)

    Q_INVOKABLE int empty() const ;
    Q_INVOKABLE int full() const;
    Q_INVOKABLE int total() const;
    Q_INVOKABLE int locked() const;
    Q_INVOKABLE int locking() const;

    bool use(int cost, int overload = 0);
    void charge(int number);
    void newturn();

signals:
    void manaChanged();


private:

    QMap<QString,int> mana;


};

#endif // MANA_H
