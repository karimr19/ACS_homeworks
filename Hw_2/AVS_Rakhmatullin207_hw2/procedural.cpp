//------------------------------------------------------------------------------
// procedural.cpp - содержит функции обработки процедурного языка
//------------------------------------------------------------------------------

#include "procedural.h"

//------------------------------------------------------------------------------
// Ввод параметров процедурного языка из файла
void Procedural::In(FILE* input_file) {
    int isAbstract;
    fscanf(input_file, "%d", &isAbstract);
    abstract = isAbstract == 1;
}

// Случайный ввод параметров процедурного языка
void Procedural::InRnd() {
    abstract = rnd2.Get() == 1;
}

//------------------------------------------------------------------------------
// Вывод параметров процедурного языка в форматируемый поток
void Procedural::Out(FILE* output_file) {
    char answer[4];
    strcpy(answer, abstract ? "yes" : "no");
    fprintf(output_file, "Type: procedural\tContains abstract data types = %s\n", answer);
    fprintf(output_file, "Year of founding: %d", founding_year);
    fprintf(output_file, "\tPopularity: %lf %%\n", popularity);
    fprintf(output_file, "Ratio of founding year to name length: %lf\n", Proportion());
}
