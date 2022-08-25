#ifndef OS1_MEMORYALLOCATOR_HPP
#define OS1_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

struct MemoryHeader {
    size_t size;
    struct MemoryHeader* next;
}MemoryHeader;

class MemoryAllocator {

    static struct MemoryHeader* freeList;
    static struct MemoryHeader* busyList;

public:
    static void init();
    static void* __mem_alloc(size_t size);
    static int __mem_free(void *ptr);
};


#endif //OS1_MEMORYALLOCATOR_HPP
