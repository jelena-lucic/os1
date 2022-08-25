#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;
uint64 TCB::ID = 0;

TCB *TCB::createThread(Body body, Arg arg, uint64* stack) {
    TCB* t = initializeThread(body, arg, stack);
    t->start();
    return t;
}

void TCB::dispatch() {
    TCB::timeSliceCounter = 0;

    TCB *old = running;

    if (!old->isFinished() && old->state != BLOCKED) {
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    running->state = RUNNING;

    if (TCB::running->id == 0) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    } else {
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

int TCB::exit() {
    if(running->state == RUNNING){
        running->state = FINISHED;
        dispatch();
        return 0;
    }
    return -1;
}

int TCB::start() {
    if(this->state != CREATED) return -1;
    this->state = READY;
    if (this->id != 0) { Scheduler::put(this); }
    return 0;
}

TCB *TCB::initializeThread(TCB::Body body, TCB::Arg arg, uint64 *stack) {
    return new TCB(body, arg, stack, DEFAULT_TIME_SLICE);
}
