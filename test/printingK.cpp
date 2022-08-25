//
// Created by os on 5/18/22.
//

#include "printingK.hpp"
#include "../lib/console.h"

uint64 lockPrintK = 0;

#define LOCKK() while(copy_and_swap(lockPrintK, 0, 1))
#define UNLOCKK() while(copy_and_swap(lockPrintK, 1, 0))

void printStringK(char const *string)
{
    LOCKK();
    while (*string != '\0')
    {
        __putc(*string);
        string++;
    }
    UNLOCKK();
}

char digitsK[] = "0123456789ABCDEF";

void printIntK(int xx, int base, int sgn)
{
    LOCKK();
    char buf[16];
    int i, neg;
    uint64 x;

    neg = 0;
    if(sgn && xx < 0){
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    do{
        buf[i++] = digitsK[x % base];
    }while((x /= base) != 0);
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
        __putc(buf[i]);

    UNLOCKK();
}