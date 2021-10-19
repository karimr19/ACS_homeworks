#ifndef AVS_RAKHMATULLIN207_HW2_OBJECT_ORIENTED_H
#define AVS_RAKHMATULLIN207_HW2_OBJECT_ORIENTED_H

//------------------------------------------------------------------------------
// object_oriented.h - содержит описание объектно-ориентированного языка программирования  и его интерфейса.
//------------------------------------------------------------------------------

# include <stdio.h>
#include <string.h>
#include "language.h"
# include "rnd.h"

// Объектно-ориентированный язык, наследник обобщенного языка
class ObjectOriented : public Language{
public:
    enum inheritance_type{SINGLE, MULTIPLE, INTERFACE};
    // Деструктор
    virtual ~ObjectOriented(){};
    // Ввод параметров объектно-ориентированного языка из файла
    virtual void In(FILE* input_file);
    // Случайный ввод параметров объектно-ориентированного языка
    virtual void InRnd();
    // Вывод параметров объектно-ориентированного языка в форматируемый поток
    virtual void Out(FILE* output_file);

private:
    // Тип наследования.
    inheritance_type inheritance;
};

#endif //AVS_RAKHMATULLIN207_HW2_OBJECT_ORIENTED_H
