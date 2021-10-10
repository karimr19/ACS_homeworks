//------------------------------------------------------------------------------
// language.cpp - содержит процедуры связанные с обработкой обобщенного языка
// и создания произвольного языка
//------------------------------------------------------------------------------

#include "language.h"


//------------------------------------------------------------------------------
// Вычисление отношения года создания к популярности.
double Proportion(language *l) {
    return l->founding_year / l->popularity;
}

// Вывод года создания языка.
void OutFoundingYear(language* l, FILE* outFile) {
    fprintf(outFile, "Year of founding: %d", l->founding_year);
}

// Вывод популярности языка.
void OutPopularity(language* l, FILE* outFile) {
    fprintf(outFile, "\tPopularity: %lf %%\n", l->popularity);
}

// Вывод отношения года к популярности.
void OutProportion(language* l, FILE* outFile) {
    fprintf(outFile, "Ratio of founding year to name length: %lf\n", Proportion(l));
}

// Ввод параметров обобщенного языка из файла
language* InLanguage(FILE* input_file) {
    language *l;
    l = new language;
    int k;
    bool checkLanguageType = CheckInt(input_file, &k);
    if(!checkLanguageType) {
        return NULL;
    }
    double popularity;
    int founding_year;
    fscanf(input_file, "%lf %d", &popularity, &founding_year);
    l->popularity = popularity;
    l->founding_year = founding_year;
    switch(k) {
        case 1:
            l->k = language::PROCEDURAL;
            InProcedural(l->p, input_file);
            return l;
        case 2:
            l->k = language::OBJECTORIENTED;
            InObjectOriented(l->o, input_file);
            return l;
        case 3:
            l->k = language::FUNCTIONAL;
            InFunctional(l->f, input_file);
            return l;
        default:
            return 0;
    }
}

// Случайный ввод обобщенного языка
language *InRnd() {
    language *l;
    l = new language;
    // Случайный год создания от 1901 до 2000 года.
    l->founding_year = IntRandom() + 1900;
    // Случайное значение популярности.
    l->popularity = DoubleRandom() * 100;
    auto k = IntRandom() % 3 + 1;
    switch(k) {
        case 1:
            l->k = language::PROCEDURAL;
            InRnd(l->p);
            return l;
        case 2:
            l->k = language::OBJECTORIENTED;
            InRnd(l->o);
            return l;
        case 3:
            l->k = language::FUNCTIONAL;
            InRnd(l->f);
            return l;
        default:
            return 0;
    }
}

//------------------------------------------------------------------------------
// Вывод параметров текущего языка в поток
void Out(language *l, FILE* output_file) {
    switch(l->k) {
        case language::PROCEDURAL:
            Out(l->p, output_file);
            break;
        case language::OBJECTORIENTED:
            Out(l->o, output_file);
            break;
        case language::FUNCTIONAL:
            Out(l->f, output_file);
            break;
        default:
            printf("Incorrect language!\n");
    }
    OutFoundingYear(l, output_file);
    OutPopularity(l, output_file);
    OutProportion(l, output_file);
}


