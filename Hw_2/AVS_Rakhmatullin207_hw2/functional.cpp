//------------------------------------------------------------------------------
// functional.cpp - содержит функции обработки функционального языка
//------------------------------------------------------------------------------

#include "functional.h"

//------------------------------------------------------------------------------
// Ввод параметров функционального языка из файла
void Functional::In(FILE *input_file) {
    int inputType;
    fscanf(input_file, "%d", &inputType);
    switch (inputType) {
        case 1:
            type = STRICT;
        case 2:
            type = DYNAMIC;
        default:
            type = STRICT;
    }
    int is_lazy;
    fscanf(input_file, "%d", &is_lazy);
    lazy = is_lazy == 1;
}

// Случайный ввод параметров функционального языка
void Functional::InRnd() {
    switch (rnd2.Get()) {
        case 1:
            type = STRICT;
        case 2:
            type = DYNAMIC;
        default:
            type = STRICT;
    }
    lazy = rnd2.Get() == 1;
}

//------------------------------------------------------------------------------
// Вывод параметров функционального языка в форматируемый поток
void Functional::Out(FILE *output_file) {
    char typization[8];
    switch (type) {
        case STRICT:
            strcpy(typization, "Strict");
        case DYNAMIC:
            strcpy(typization, "Dynamic");
        default:
            strcpy(typization, "Strict");
    }
    char is_lazy[4];
    strcpy(is_lazy, lazy ? "yes" : "no");
    fprintf(output_file, "Type: functional\tLazy: %s\tTypization - %s\n", is_lazy, typization);
    fprintf(output_file, "Year of founding: %d", founding_year);
    fprintf(output_file, "\tPopularity: %lf %%\n", popularity);
    fprintf(output_file, "Ratio of founding year to name length: %lf\n", Proportion());
}
