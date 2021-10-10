//------------------------------------------------------------------------------
// container.cpp - содержит функции обработки контейнера
//------------------------------------------------------------------------------

#include "container.h"

//------------------------------------------------------------------------------
// Инициализация контейнера
void Init(container *c) {
    c->len = 0;
}

//------------------------------------------------------------------------------
// Очистка контейнера от элементов (освобождение памяти)
void Clear(container *c) {
    for(int i = 0; i < c->len; i++) {
        delete c->cont[i];
    }
    c->len = 0;
}

//------------------------------------------------------------------------------
// Ввод содержимого контейнера из указанного потока
void In(container *c, FILE* input_file) {
    while((c->cont[c->len] = InLanguage(input_file)) != NULL) {
        c->len++;
    }
    fclose(input_file);
}

//------------------------------------------------------------------------------
// Случайный ввод содержимого контейнера
void InRnd(container *c, int size) {
    while(c->len < size) {
        if((c->cont[c->len] = InRnd()) != 0) {
            c->len++;
        }
    }
}

//------------------------------------------------------------------------------
// Вывод содержимого контейнера в указанный поток
void Out(container *c, FILE* output_file) {
    fprintf(output_file, "Container contains %d elements.\n", c->len);
    for(int i = 0; i < c->len; i++) {
        fprintf(output_file, "%d: ", i + 1);
        Out(c->cont[i], output_file);
    }
}


// Считает сумму отношений года к длине названия всех элементов.
double ProportionsSum(container *c){
    double sum = 0.0;
    for(int i = 0; i < c->len; i++) {
        sum += Proportion(c->cont[i]);
    }
    return sum;
}

//------------------------------------------------------------------------------
// Удаляет из контейнера элемент по индексу.
void DeleteElementByIndex(container *c, int index){
    if(c->len > 1) {
    for (int i = index; i < c->len - 1; ++i)
    {
        c->cont[i] = c->cont[i + 1];
    }}
    --c->len;
    c->cont[c->len] = NULL;
}

//------------------------------------------------------------------------------
// Удаляет из контейнера элементы, у которых отношение меньше среднего.
void DeleteLessThenAverageProportion(container *c){
    int i = 0;
    double average_value = ProportionsSum(c) / c->len;
    int elements_cnt = c->len;
    while((elements_cnt > 0) && (i < elements_cnt)) {
        if(Proportion(c->cont[i]) < average_value) {
            DeleteElementByIndex(c, i);
            --i;
            --elements_cnt;
        }
        ++i;
    }
}

