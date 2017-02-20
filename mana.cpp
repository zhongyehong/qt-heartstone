#include<mana.h>
#include<QDebug>

Mana::Mana(QObject *parent)
    :QObject(parent){
    mana.clear();
    mana["empty"] = 0;
    mana["full"] = 0;
    mana["total"] = 0;
    mana["locked"] = 0;
    mana["locking"] = 0;
}


Mana::Mana(const Mana& initmana)
    :QObject(initmana.parent()){
    mana.clear();
    mana["empty"] = initmana.empty();
    mana["full"] = initmana.full();
    mana["total"] = initmana.total();
    mana["locked"] = initmana.locked();
    mana["locking"] = initmana.locking();
}

Mana& Mana::operator=(const Mana& initmana) {
    mana.clear();
    mana["empty"] = initmana.empty();
    mana["full"] = initmana.full();
    mana["total"] = initmana.total();
    mana["locked"] = initmana.locked();
    mana["locking"] = initmana.locking();
    return *this;
}

int Mana::empty() const{
    return mana["empty"];
}

int Mana::full() const{
    return mana["full"];
}

int Mana::total() const{
    return mana["total"];
}

int Mana::locked() const{
    return mana["locked"];
}

int Mana::locking() const{
    return mana["locking"];
}

bool Mana::use(int cost, int overload) {
    if(mana["full"] < cost) {
        return false;
    } else {
        mana["empty"] += cost;
        mana["full"] -= cost;
        mana["locked"] += overload;
        emit manaChanged();
        return true;
    }
}

void Mana::charge(int number) {
    mana["full"] += number;
    if(mana["full"] > 10) mana["full"] = 10;
    int rest = mana["total"] - mana["full"];
    if(rest <= 0) {
        mana["locking"] = mana["empty"] = 0;
        emit manaChanged();
        return;
    }
    if(mana["locking"] >= rest) {
        mana["locking"] = rest;
        mana["empty"] = 0;
    } else {
        if(mana["empty"] >= rest - mana["locking"]) {
            mana["empty"] = rest - mana["locking"];
        }
    }
    emit manaChanged();
    return;
}

void Mana::newturn() {
    mana["total"] += 1;
    if(mana["total"] > 10) mana["total"] = 10;
    mana["locking"] = mana["locked"];
    mana["locked"] = 0;
    mana["full"] = mana["total"] - mana["locking"];
    mana["empty"] = 0;
    emit manaChanged();
    return;
}
