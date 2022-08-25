#include "../h/_sem.hpp"

_sem::_sem(unsigned value) {
    this->value = (int)value;
    this->closed = 0;
}

_sem::~_sem() {
    closed = 1;
    while(this->blockedThreads.peekFirst()) {
        TCB* thread = this->blockedThreads.removeFirst();
        thread->state = TCB::READY;
        Scheduler::put(thread);
    }
}

int _sem::signal() {
    if(closed == 1) return -1;
    if(++value <= 0) {
        TCB* thread = this->blockedThreads.removeFirst();
        thread->state = TCB::READY;
        Scheduler::put(thread);
    }
    return 0;
}

int _sem::wait() {
    if(closed == 1) return -1;
    if(--value < 0) {
        this->blockedThreads.addLast(TCB::running);
        TCB::running->state = TCB::BLOCKED;
        TCB::dispatch();
    }
    if (closed == 0) return 0;
    return -1;
}
