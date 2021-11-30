//------------------------------------------------------------------------------
// functional.cpp - содержит процедуру ввода параметров
// для уже созданного функционального языка
//------------------------------------------------------------------------------

#include "functional.h"

//------------------------------------------------------------------------------
// Ввод параметров функционального языка из файла
void InFunctional(functional *f, FILE* input_file) {
    int type;
    fscanf(input_file, "%d", &type);
    switch (type) {
        case 1:
            f->type = functional::STRICT;
        case 2:
            f->type = functional::DYNAMIC;
        default:
            f->type = functional::STRICT;
    }
    int is_lazy;
    fscanf(input_file, "%d", &is_lazy);
    if(is_lazy > 0) {
        f->lazy = 1;
    } else {
        f->lazy = 0;
    }
}

// Случайный ввод параметров функционального языка
void InRnd(functional *f) {
    int type = IntRandom() % 2 + 1;
    switch (type) {
        case 1:
            f->type = functional::STRICT;
        case 2:
            f->type = functional::DYNAMIC;
        default:
            f->type = functional::STRICT;
    }
    f->lazy = IntRandom() % 2;
}

//------------------------------------------------------------------------------
// Вывод параметров функционального языка в форматируемый поток
void Out(functional *f, FILE* output_file) {
    char typization[8];
    switch (f->type) {
        case functional::STRICT:
            strcpy(typization, "Strict");
        case functional::DYNAMIC:
            strcpy(typization, "Dynamic");
        default:
            strcpy(typization, "Strict");
    }
    char is_lazy[4];
    strcpy(is_lazy, f->lazy ? "yes" : "no");
    fprintf(output_file, "Type: functional\tLazy: %s\tTypization - %s\n", is_lazy, typization);
}

