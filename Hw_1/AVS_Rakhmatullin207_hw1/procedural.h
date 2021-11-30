#ifndef __procedural__
#define __procedural__

//------------------------------------------------------------------------------
// procedural.h - содержит описание процедурного языка программирования  и его интерфейса.
//------------------------------------------------------------------------------


#include <stdio.h>
#include <string.h>
# include "rnd.h"

// Процедурный язык
struct procedural {
    int abstract; // наличие, отсутствие абстрактных типов данных
};

// Ввод параметров процедурного языка из файла
void InProcedural(procedural *p, FILE* input_file);

// Случайный ввод параметров процедурного языка
void InRnd(procedural *p);

// Вывод параметров процедурного языка в форматируемый поток
void Out(procedural *p, FILE* output_file);


#endif // __procedural__
