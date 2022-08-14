#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../test/printing.hpp"

// Thread Control Block
class TCB
{
public:
    enum State {CREATED, READY, RUNNING, FINISHED};

    ~TCB() { delete[] stack; }

    bool isFinished() const { return this->state == FINISHED; }

    uint64 getTimeSlice() const { return timeSlice; }

    int start();

    using Body = void (*)(void*);

    using Arg = void*;

    static TCB *createThread(Body body, Arg arg, uint64* stack);

    static TCB *running;

private:
    TCB(Body body, Arg arg, uint64 *stack, uint64 timeSlice) :
            body(body),
            arg(arg),
            stack(body != nullptr ? stack : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice)
    {
        this->id = this->ID++;
        this->state = CREATED;
    }

    static uint64 ID;

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    uint64 id;
    Body body;
    Arg arg;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    State state;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static int exit();

    static uint64 timeSliceCounter;
};

#endif //TCB_HPP
