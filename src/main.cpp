#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

extern void userMain(void* arg);

int main() {

    printString("MAIN START\n");
    TCB::running = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running->start();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t handle;
    thread_create(&handle, userMain, nullptr);
    thread_start(handle);

    while(!handle->isFinished()) {
        thread_dispatch();
    } // join user main

    delete handle;

    printString("Finished\n");

    return 0;
}
