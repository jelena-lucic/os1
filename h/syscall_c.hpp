#ifndef SYSCALL_C_H
#define SYSCALL_C_H

#include "tcb.hpp"

typedef TCB* thread_t;

int thread_create(
        thread_t *handle,
        void(*start_routine)(void*),
        void* arg);

int thread_exit();

void thread_dispatch();

int thread_start(thread_t);

#endif //SYSCALL_C_H