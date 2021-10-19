/* checkers.cpp - реализует функции вывода исключений и проверки корректности ввода.
 */

#include "checkers.h"

// Вывод информации о том, что входная строка не верна.
void ErrMessage1() {
    printf("incorrect command line!\n"
           "  Waited:\n"
           "     command -f infile outfile01 outfile02\n"
           "  Or:\n"
           "     command -n number outfile01 outfile02\n");
}

// Вывод иформации о том, что значение квалификатора неверное.
void ErrMessage2() {
    printf("incorrect qualifier value!\n"
           "  Waited:\n"
           "     command -f infile outfile01 outfile02\n"
           "  Or:\n"
           "     command -n number outfile01 outfile02\n");
}

// Считывает число, если это возможно и возвращает true, иначе - false.
bool CheckInt(FILE* inputFile, int *number) {
    int checker = fscanf(inputFile, "%d", number);
    if (checker == EOF || checker == 0) {
        number = 0;
        return false;
    }
    return true;
}
