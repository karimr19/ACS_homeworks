//------------------------------------------------------------------------------
// object_oriented.cpp - содержит процедуру ввода параметров
// для уже созданного объектно-ориентированного языка
//------------------------------------------------------------------------------

#include "object_oriented.h"

//------------------------------------------------------------------------------
// Ввод параметров объектно-ориентированного из файла
void InObjectOriented(object_oriented &o, FILE* input_file) {
    int inheritance_type;
    fscanf(input_file, "%d", &inheritance_type);
    switch (inheritance_type) {
        case 1:
            o.inheritance = object_oriented::SINGLE;
        case 2:
            o.inheritance = object_oriented::MULTIPLE;
        case 3:
            o.inheritance = object_oriented::INTERFACE;
        default:
            o.inheritance = object_oriented::SINGLE;
    }
}

// Случайный ввод параметров объектно-ориентированного языка
void InRnd(object_oriented &o) {
    int inheritance_type = IntRandom() % 3 + 1;
    switch (inheritance_type) {
        case 1:
            o.inheritance = object_oriented::SINGLE;
        case 2:
            o.inheritance = object_oriented::MULTIPLE;
        case 3:
            o.inheritance = object_oriented::INTERFACE;
        default:
            o.inheritance = object_oriented::SINGLE;
    }
}

//------------------------------------------------------------------------------
// Вывод параметров объектно-ориентированного языка в форматируемый поток
void Out(object_oriented &o, FILE* output_file) {
    char answer[10];
    switch (o.inheritance) {
        case object_oriented::SINGLE:
            strcpy(answer, "Single");
        case object_oriented::MULTIPLE:
            strcpy(answer, "Multiple");
        case object_oriented::INTERFACE:
            strcpy(answer, "Interface");
        default:
            strcpy(answer, "Single");
    }
    fprintf(output_file, "Type: object-oriented\tInheritance - %s\n", answer);
}

