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

int thread_start(thread_t thread) {
    Riscv::w_a1((uint64)thread);
    Riscv::w_a0(0x14);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_open (
        sem_t* handle,
        unsigned init
) {
    Riscv::w_a2((uint64)handle);
    Riscv::w_a1((uint64)init);
    Riscv::w_a0(0x21);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_close (sem_t handle) {
    Riscv::w_a1((uint64)handle);
    Riscv::w_a0(0x22);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_wait (sem_t id) {
    Riscv::w_a1((uint64)id);
    Riscv::w_a0(0x23);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_signal (sem_t id) {
    Riscv::w_a1((uint64)id);
    Riscv::w_a0(0x24);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

char getc () {
    Riscv::w_a0(0x41);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return (char)a0;
}

void putc (char c) {
    Riscv::w_a1((uint64)c);
    Riscv::w_a0(0x42);
    __asm__ volatile ("ecall");
}

int thread_initialize(thread_t *handle, void (*start_routine)(void *), void *arg) {
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
    Riscv::w_a0(0x15);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

void *mem_alloc(size_t size) {
    Riscv::w_a1((uint64)size);
    Riscv::w_a0(0x01);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return (void*)a0;
}

int mem_free(void * ptr) {
    Riscv::w_a1((uint64)ptr);
    Riscv::w_a0(0x02);
    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}
