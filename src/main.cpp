#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

extern void userMain(void* arg);

int main() {

    TCB::running = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running->start();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    printString("MAIN START\n");

    thread_t user;
    thread_create(&user, userMain, nullptr);
    thread_start(user);

    while(!user->isFinished()) {
        thread_dispatch();
    } // join user main

    delete user;

    printString("Finished\n");

    delete TCB::running;

    return 0;
}
