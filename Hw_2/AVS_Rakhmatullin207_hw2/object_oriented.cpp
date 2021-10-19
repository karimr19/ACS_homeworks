//------------------------------------------------------------------------------
// object_oriented.cpp - содержит функции обработки объектно-ориентированного языка
//------------------------------------------------------------------------------

#include "object_oriented.h"

// Ввод параметров объектно-ориентированного языка из файла
void ObjectOriented::In(FILE *input_file) {
    int inheritance_type;
    fscanf(input_file, "%d", &inheritance_type);
    switch (inheritance_type) {
        case 1:
            inheritance = SINGLE;
        case 2:
            inheritance = MULTIPLE;
        case 3:
            inheritance = INTERFACE;
        default:
            inheritance = SINGLE;
    }
}

// Случайный ввод параметров объектно-ориентированного языка
void ObjectOriented::InRnd() {
    int inheritance_type = rnd3.Get();
    switch (inheritance_type) {
        case 1:
            inheritance = SINGLE;
        case 2:
            inheritance = MULTIPLE;
        case 3:
            inheritance = INTERFACE;
        default:
            inheritance = SINGLE;
    }
}

// Вывод параметров объектно-ориентированного языка в форматируемый поток
void ObjectOriented::Out(FILE *output_file) {
    char answer[10];
    switch (inheritance) {
        case SINGLE:
            strcpy(answer, "Single");
        case MULTIPLE:
            strcpy(answer, "Multiple");
        case INTERFACE:
            strcpy(answer, "Interface");
        default:
            strcpy(answer, "Single");
    }
    fprintf(output_file, "Type: object-oriented\tInheritance - %s\n", answer);
    fprintf(output_file, "Year of founding: %d", founding_year);
    fprintf(output_file, "\tPopularity: %lf %%\n", popularity);
    fprintf(output_file, "Ratio of founding year to name length: %lf\n", Proportion());
}