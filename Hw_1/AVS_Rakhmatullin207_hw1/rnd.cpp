#include "rnd.h"

// Генератор случайных целых чисел от 0 до 99.
int IntRandom() {
    return rand() % 100;
}

// Генератор дробных чисел от 0 до 1.
double DoubleRandom() {
    return (double)rand()/RAND_MAX;
}
