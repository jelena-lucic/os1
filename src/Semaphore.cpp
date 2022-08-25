#include "../h/syscall_cpp.hpp"

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}
