#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/_sem.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 a1 = r_a1();
    uint64 a2 = r_a2();
    uint64 a3 = r_a3();
    uint64 a4 = r_a4();
    long a0 = r_a0();

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)

        uint64 sepc = r_sepc() + 4; // jer pc pokazuje na trenutnu instrukciju tj ecall a treba na sledecu
        uint64 sstatus = r_sstatus(); // cuva vrednost statusnog registra


        if(a0 == 0x01) { // mem_alloc
            void* ptr = __mem_alloc((size_t)a1);
            w_a0_stack((long)ptr);
        }
        else if(a0 == 0x02) { // mem_free
            a0 = __mem_free((void *)a1);
            w_a0_stack(a0);
        }
        else if(a0 == 0x11) { //thread_create
            TCB *handle = TCB::createThread((void (*)(void*))(a3), (void*)a2, (uint64*)a1);

            if(!handle) w_a0_stack(-1);
            else {
                TCB** h = (TCB**)a4;
                *(h) = handle;
                w_a0_stack(0);
            }
        }
        else if(a0 == 0x12) { // thread_exit
            a0 = TCB::exit();
            w_a0_stack(a0);
        }
        else if(a0 == 0x13) { // thread_dispatch
            TCB::dispatch();
        }
        else if(a0 == 0x14) { //thread_start
            thread_t thread = (thread_t)a1;
            if(!thread) w_a0_stack(-1);
            else {
                a0 = thread->start();
                w_a0_stack(a0);
            }
        }
        else if (a0 == 0x15) { //thread_initialize
            TCB *handle = TCB::initializeThread((void (*)(void*))(a3), (void*)a2, (uint64*)a1);

            if(!handle) w_a0_stack(-1);
            else {
                TCB** h = (TCB**)a4;
                *(h) = handle;
                w_a0_stack(0);
            }
        }
        else if(a0 == 0x21) { // sem_open
            _sem* handle = new _sem((unsigned)a1);
            _sem** h = (_sem**)a2;
            *(h) = handle;
            w_a0_stack(0);
        }
        else if(a0 == 0x22) { // sem_close
            _sem* sem = (_sem*)a1;

            if(!sem) w_a0_stack(-1);
            else {
                delete sem;
                w_a0_stack(0);
            }
        }
        else if(a0 == 0x23) { // sem_wait
            _sem* sem = (_sem*)a1;

            if(!sem) w_a0_stack(-1);
            else {
                a0 = sem->wait();
                w_a0_stack(a0);
            }
        }
        else if(a0 == 0x24) { // sem_signal
            _sem* sem = (_sem*)a1;

            if(!sem) w_a0_stack(-1);
            else {
                a0 = sem->signal();
                w_a0_stack(a0);
            }
        }
        else if(a0 == 0x41) { // getc
            char c = __getc();
            w_a0_stack((long)c);
        }
        else if(a0 == 0x42) { // putc
            __putc((char)a1);
        }

        w_sstatus(sstatus); // restauracija statusnog registra
        w_sepc(sepc); // restauracija pc registra

    } else if (scause == 0x8000000000000001UL) {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        /*TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();

            TCB::dispatch();

            w_sstatus(sstatus);
            w_sepc(sepc);
        }*/
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    } else {
        // unexpected trap cause
        printInt(scause);
        printString("\n");
        printInt(r_sepc());
        printString("\n");
    }
}