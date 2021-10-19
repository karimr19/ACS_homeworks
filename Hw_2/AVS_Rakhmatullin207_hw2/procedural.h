#ifndef AVS_RAKHMATULLIN207_HW2_PROCEDURAL_H
#define AVS_RAKHMATULLIN207_HW2_PROCEDURAL_H

//------------------------------------------------------------------------------
// procedural.h - содержит описание процедурного языка программирования  и его интерфейса.
//------------------------------------------------------------------------------

#include "language.h"
#include <string.h>

// Процедурный язык, наследник обобщенного языка
class Procedural : public Language{
    // Деструктор
    virtual ~Procedural(){};
    // Ввод параметров процедурного языка из файла
    virtual void In(FILE* input_file);
    // Случайный ввод параметров процедурного языка
    virtual void InRnd();
    // Вывод параметров процедурного языка в форматируемый поток
    virtual void Out(FILE* output_file);

private:
    // Абстрактность языка.
    bool abstract;
};


#endif //AVS_RAKHMATULLIN207_HW2_PROCEDURAL_H
