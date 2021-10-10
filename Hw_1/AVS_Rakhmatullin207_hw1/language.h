#ifndef __language__
#define __language__

//------------------------------------------------------------------------------
// language.h - содержит описание обобщающего языка программирования.
//------------------------------------------------------------------------------

#include <stdio.h>
#include <stdbool.h>
#include "procedural.h"
#include "object_oriented.h"
#include "functional.h"
#include "rnd.h"
#include "checkers.h"

//------------------------------------------------------------------------------
// Структура обобщающая все языки
struct language {
    // значения ключей для каждого из языков
    enum key {PROCEDURAL, OBJECTORIENTED, FUNCTIONAL};
    key k; // ключ
    double popularity; // популярность в процентах
    int founding_year; // год создания
    // используемые альтернативы
    union {
        procedural p;
        object_oriented o;
        functional f;
    };
};

// Ввод обобщенного языка.
language *InLanguage(FILE* input_file);

// Случайный ввод обобщенного языка.
language *InRnd();

// Вывод обобщенного языка.
void Out(language *l, FILE* output_file);

// Вывод года создания языка.
void OutFoundingYear(language* l, FILE* outFile);

// Вывод отношения года к популярности.
void OutProportion(language* l, FILE* outFile);

// Вывод популярности языка.
void OutPopularity(language* l, FILE* outFile);

// Вычисление отношения года создания к количеству символов в названии.
double Proportion(language *l);

#endif
