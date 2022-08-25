#ifndef __SEM_HPP
#define __SEM_HPP

#include "list.hpp"
#include "syscall_c.hpp"
#include "../lib/mem.h"

class _sem {
private:
    int value;
    List<TCB> blockedThreads;
    int closed;

    friend class Riscv;
public:
    _sem(unsigned value);
    ~_sem();
    int signal();
    int wait();

    void *operator new(size_t size) { return __mem_alloc(size); }
    void operator delete(void *ptr) { __mem_free(ptr); }
};

#endif //__SEM_HPP
