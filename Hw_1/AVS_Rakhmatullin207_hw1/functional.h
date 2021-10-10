#ifndef __functional__
#define __functional__

//------------------------------------------------------------------------------
// functional.h - содержит описание функционального языка программирования  и его интерфейса.
//------------------------------------------------------------------------------

#include <stdio.h>
#include <string.h>
# include "rnd.h"

// Функциональный язык
struct functional {
    enum typization{STRICT, DYNAMIC};
    typization type;
    bool lazy;
};

// Ввод параметров функционального языка из файла
void InFunctional(functional &f, FILE* input_file);

// Случайный ввод параметров функционального языка
void InRnd(functional &f);

// Вывод параметров функционального языка в форматируемый поток
void Out(functional &f, FILE* output_file);


#endif //__functional__
