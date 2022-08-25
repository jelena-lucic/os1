#include "../h/syscall_cpp.hpp"

void Thread::wrapper(void* thread) {
    if(thread) {
        ((Thread*)thread)->run();
    }
}

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::Thread() {
    thread_initialize(&this->myHandle, Thread::wrapper, this);
}

int Thread::start() {
    return thread_start(this->myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    delete myHandle;
}