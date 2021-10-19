//
// Created by Karim on 15.10.2021.
//

#include "procedural.h"
#include "object_oriented.h"
#include "functional.h"

// Инициализация статических полей.
Random Language::rnd2(1, 2);
Random Language::rnd3(1, 3);
Random Language::rnd100(1, 100);
// Ввод обобщенного языка
Language* Language::StaticIn(FILE *input_file) {
    int k;
    bool checkLanguageType = CheckInt(input_file, &k);
    if(!checkLanguageType) {
        return 0;
    }
    double popularity;
    int founding_year;
    fscanf(input_file, "%lf %d", &popularity, &founding_year);
    Language* l = nullptr;
    switch (k) {
        case 1:
            l = new Procedural;
            break;
        case 2:
            l = new ObjectOriented;
            break;
        case 3:
            l = new Functional;
            break;
    }
    l->SetPopularity(popularity);
    l->SetFoundingYear(founding_year);
    l->In(input_file);
    return l;
}

// Случайный ввод обобщенного языка
Language* Language::StaticInRnd() {
    int k = rnd3.Get();
    Language* l = nullptr;
    switch (k) {
        case 1:
            l = new Procedural;
            break;
        case 2:
            l = new ObjectOriented;
            break;
        case 3:
            l = new Functional;
            break;
    }
    l->InRnd();
    l->popularity = Random::GetDouble() * 100;
    l->founding_year = 1900 + rnd100.Get();
    return l;
}

// Вычисление отношения года создания к популярности обобщенного языка
double Language::Proportion() {
    return founding_year / popularity;
}

// Установка значения популрности.
void Language::SetPopularity(double popularity) {
    this->popularity = popularity;
}

// Установка значения года основания.
void Language::SetFoundingYear(int year) {
    this->founding_year = year;
}