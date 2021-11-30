#ifndef __object_oriented__
#define __object_oriented__

//------------------------------------------------------------------------------
// object_oriented.h - содержит описание объектно-ориентированного языка программирования  и его интерфейса.
//------------------------------------------------------------------------------

# include <stdio.h>
#include <string.h>
# include "rnd.h"

// Объектно-ориентированный язык
struct object_oriented {
    enum inheritance_type{SINGLE, MULTIPLE, INTERFACE};
    inheritance_type inheritance;
};

// Ввод параметров объектно-ориентированного языка из файла
void InObjectOriented(object_oriented *o, FILE* input_file);

// Случайный ввод параметров объектно-ориентированного языка
void InRnd(object_oriented *o);

// Вывод параметров объектно-ориентированного языка в форматируемый поток
void Out(object_oriented *o, FILE* output_file);

#endif // __procedural__
