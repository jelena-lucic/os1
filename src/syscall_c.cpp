#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../lib/mem.h"

int thread_create(
        thread_t *handle,
        void(*start_routine)(void*),
        void* arg) {

    void* stackSpace;
    if(start_routine == nullptr) stackSpace = nullptr;
    else {
        stackSpace = __mem_alloc(DEFAULT_STACK_SIZE * sizeof (uint64));
        if(stackSpace == nullptr) return -1; // alokacija steka nije uspela
    }

    Riscv::w_a4((uint64)handle);
    Riscv::w_a3((uint64)start_routine);
    Riscv::w_a2((uint64)arg);
    Riscv::w_a1((uint64)stackSpace);
    Riscv::w_a0(0x11);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int thread_exit() {
    Riscv::w_a0(0x12);
    __asm__ volatile("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

void thread_dispatch() {
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
}
