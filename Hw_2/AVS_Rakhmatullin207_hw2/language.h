#ifndef AVS_RAKHMATULLIN207_HW2_LANGUAGE_H
#define AVS_RAKHMATULLIN207_HW2_LANGUAGE_H

//------------------------------------------------------------------------------
// language.h - содержит описание обобщающего языка программирования
//------------------------------------------------------------------------------

#include <stdio.h>
#include "checkers.h"
#include "rnd.h"

//------------------------------------------------------------------------------
// Класс, обобщающий все имеющиеся языки программирования
class Language {
protected:
    // Объект для генерации чисел в диапазоне [1;3]
    static Random rnd3;
    // Объект для генерации чисел в диапазоне [1;2]
    static Random rnd2;
    double popularity; // популярность в процентах
    int founding_year; // год создания
public:
    virtual ~Language() {};
    // Ввод обобщенного языка
    static Language *StaticIn(FILE* input_file);
    // Виртуальный метод Ввода обобщенного языка
    virtual void In(FILE* input_file) = 0;
    // Случайный ввод обобщенного языка
    static Language *StaticInRnd();
    // Виртуальный метод ввода случайного языка
    virtual void InRnd() = 0;
    // Вывод обобщенного языка
    virtual void Out(FILE* output_file) = 0;
    // Вычисление отношения года создания к популярности обобщенного языка
    double Proportion();
    // Установка значения популрности.
    void SetPopularity(double popularity);
    // Установка значения года основания.
    void SetFoundingYear(int year);

private:
    // Объект для генерации чисел в диапазоне [1;100]
    static Random rnd100;
};

#endif //AVS_RAKHMATULLIN207_HW2_LANGUAGE_H
