//------------------------------------------------------------------------------
// procedural.cpp - содержит процедуру ввода параметров
// для уже созданного процедурного языка
//------------------------------------------------------------------------------

#include "procedural.h"

//------------------------------------------------------------------------------
// Ввод параметров процедурного языка из файла
void InProcedural(procedural &p, FILE* input_file) {
    int isAbstract;
    fscanf(input_file, "%d", &isAbstract);
    if(isAbstract > 0) {
        p.abstract = true;
    } else {
        p.abstract = false;
    }
}

// Случайный ввод параметров процедурного языка
void InRnd(procedural &p) {
    p.abstract = IntRandom() % 2 == 0;
}

//------------------------------------------------------------------------------
// Вывод параметров процедурного языка в форматируемый поток
void Out(procedural &p, FILE* output_file) {
    char answer[4];
    strcpy(answer, p.abstract ? "yes" : "no");
    fprintf(output_file, "Type: procedural\tContains abstract data types = %s\n", answer);
}
