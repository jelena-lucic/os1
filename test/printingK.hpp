#ifndef _PRINTINGK_HPP_
#define _PRINTINGK_HPP_

typedef unsigned long uint64;

extern "C" uint64 copy_and_swap(uint64 &lock, uint64 expected, uint64 desired);

void printStringK(char const *string);

void printIntK(int xx, int base=10, int sgn=0);

#endif // _PRINTINGK_HPP_

