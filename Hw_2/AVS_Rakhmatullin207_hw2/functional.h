#ifndef AVS_RAKHMATULLIN207_HW2_FUNCTIONAL_H
#define AVS_RAKHMATULLIN207_HW2_FUNCTIONAL_H

//------------------------------------------------------------------------------
// functional.h - содержит описание функционального языка программирования  и его интерфейса.
//------------------------------------------------------------------------------

#include <stdio.h>
#include <string.h>
#include "language.h"
#include "rnd.h"

// Функциональный язык - наследник обобщенного языка
class Functional : public Language{
public:
    enum typization{STRICT, DYNAMIC};
    // Деструктор
    virtual ~Functional(){};
    // Ввод параметров функционального языка из файла
    virtual void In(FILE* input_file);
    // Случайный ввод параметров функционального языка
    virtual void InRnd();
    // Вывод параметров функционального языка в форматируемый поток
    virtual void Out(FILE* output_file);

private:
    // Типизация языка
    typization type;
    // Поддержка lazy вычислений
    bool lazy;
};


#endif //AVS_RAKHMATULLIN207_HW2_FUNCTIONAL_H
