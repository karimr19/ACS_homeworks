/* checkers.h - объявляет функции вывода исключений и проверки корректности ввода.
 */
#ifndef __exceptions__
#define __exceptions__

#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"

// Вывод информации о том, что входная строка не верна.
void ErrMessage1();

// Вывод иформации о том, что значение квалификатора неверное.
void ErrMessage2();

// Считывает число, если это возможно и возвращает true, иначе - false.
int CheckInt(FILE* input_file, int *number);

#endif //AVS_HOMEWORK_CHECKERS_H
