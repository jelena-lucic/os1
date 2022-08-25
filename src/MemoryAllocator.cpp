//
// Created by os on 8/24/22.
//

#include "../h/MemoryAllocator.hpp"

void MemoryAllocator::init() {
    freeList = (struct MemoryHeader*)HEAP_START_ADDR;

    struct MemoryHeader* mem = freeList;

    mem->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) - sizeof(MemoryHeader);
    mem->next = nullptr;
}

void *MemoryAllocator::__mem_alloc(size_t size) {
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;

    if(!freeList) return nullptr;

    struct MemoryHeader* tmp, *prev = nullptr;
    for (tmp = freeList; tmp; prev = tmp, tmp = tmp->next) {
        if(tmp->size >= sizeToAllocate) {
            break;
        }
    }

    if(!tmp) return nullptr;

    size_t remain = tmp->size - sizeToAllocate;

    if (remain >= sizeof(MemoryHeader)) {
        tmp->size = sizeToAllocate;
        size_t offset = sizeof(MemoryHeader) + sizeToAllocate;
        struct MemoryHeader* newHeader = ( struct MemoryHeader*) ((char*)tmp + offset);
        if (prev) prev->next = newHeader;
        else freeList = newHeader;
        newHeader->next = tmp->next;
        newHeader->size = remain - sizeof(MemoryHeader);
    }
    else {
        if (prev) prev->next = tmp;
        else freeList = tmp->next;
    }
    tmp->next = nullptr;
    return (char*)tmp + sizeof(MemoryHeader);
}

int MemoryAllocator::__mem_free(void *ptr) {
    return 0;
}
