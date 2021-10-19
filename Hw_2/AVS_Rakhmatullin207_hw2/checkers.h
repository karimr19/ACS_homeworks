/* checkers.h - объявляет функции вывода исключений и проверки корректности ввода.
 */
#ifndef AVS_RAKHMATULLIN207_HW2_CHECKERS_H
#define AVS_RAKHMATULLIN207_HW2_CHECKERS_H


#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"

// Вывод информации о том, что входная строка не верна.
void ErrMessage1();

// Вывод иформации о том, что значение квалификатора неверное.
void ErrMessage2();

// Считывает число, если это возможно и возвращает true, иначе - false.
bool CheckInt(FILE* input_file, int *number);


#endif //AVS_RAKHMATULLIN207_HW2_CHECKERS_H
