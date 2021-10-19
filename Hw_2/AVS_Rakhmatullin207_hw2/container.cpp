//------------------------------------------------------------------------------
// container_Constr.cpp - содержит функции обработки контейнера
//------------------------------------------------------------------------------
#include "container.h"

//------------------------------------------------------------------------------
// Конструктор контейнера
Container::Container(): len{0} { }

//------------------------------------------------------------------------------
// Деструктор контейнера
Container::~Container() {
    Clear();
}

//------------------------------------------------------------------------------
// Очистка контейнера от элементов (освобождение памяти)
void Container::Clear() {
    for(int i = 0; i < len; i++) {
        delete storage[i];
    }
    len = 0;
}
//------------------------------------------------------------------------------
// Получение длины контейнера
int Container::GetLength() {
    return len;
}
//------------------------------------------------------------------------------
// Ввод содержимого контейнера из указанного потока
void Container::In(FILE* input_file) {
    while((storage[len] = Language::StaticIn(input_file)) != 0) {
        len++;
    }
    fclose(input_file);
}

//------------------------------------------------------------------------------
// Случайный ввод содержимого контейнера
void Container::InRnd(int size) {
    while(len < size) {
        if((storage[len] = Language::StaticInRnd()) != nullptr) {
            len++;
        }
    }
}

//------------------------------------------------------------------------------
// Вывод содержимого контейнера в указанный поток
void Container::Out(FILE* output_file) {
    fprintf(output_file, "Container contains %d elements.\n", len);
    for(int i = 0; i < len; i++) {
        fprintf(output_file, "%d: ", i + 1);
        storage[i]->Out(output_file);
    }
}

//------------------------------------------------------------------------------
// Считает сумму отношений года к длине названия всех элементов.
double Container::ProportionsSum(){
    double sum = 0.0;
    for(int i = 0; i < len; i++) {
        sum += storage[i]->Proportion();
    }
    return sum;
}

//------------------------------------------------------------------------------
// Удаляет из контейнера элемент по индексу.
void Container::DeleteElementByIndex(int index){
    if(len > 1) {
        for (int i = index; i < len - 1; ++i)
        {
            storage[i] = storage[i + 1];
        }}
    --len;
    storage[len] = NULL;
}

//------------------------------------------------------------------------------
// Удаляет из контейнера элементы, у которых отношение меньше среднего.
void Container::DeleteLessThenAverageProportion(){
    int i = 0;
    double average_value = ProportionsSum() / len;
    int elements_cnt = len;
    while((elements_cnt > 0) && (i < elements_cnt)) {
        if(storage[i]->Proportion() < average_value) {
            DeleteElementByIndex(i);
            --i;
            --elements_cnt;
        }
        ++i;
    }
}