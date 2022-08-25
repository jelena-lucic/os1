#ifndef SYSCALL_C_H
#define SYSCALL_C_H

#include "tcb.hpp"

class _sem;

typedef TCB* thread_t;
typedef _sem* sem_t;

void* mem_alloc (size_t size);

int mem_free (void*);

int thread_create(
        thread_t *handle,
        void(*start_routine)(void*),
        void* arg);

int thread_exit();

void thread_dispatch();

int thread_start(thread_t);

int thread_initialize(thread_t *handle,
                      void(*start_routine)(void*),
                      void* arg);

int sem_open (
        sem_t* handle,
        unsigned init
);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

char getc ();

void putc (char c);

#endif //SYSCALL_C_H