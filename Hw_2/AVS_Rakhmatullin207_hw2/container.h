#ifndef AVS_RAKHMATULLIN207_HW2_CONTAINER_H
#define AVS_RAKHMATULLIN207_HW2_CONTAINER_H

//------------------------------------------------------------------------------
// container.h - содержит тип данных,
// представляющий простейший контейнер
//------------------------------------------------------------------------------

#include "language.h"

//------------------------------------------------------------------------------
// Простейший контейнер на основе одномерного массива
class Container {
public:
    // Конструктор
    Container();
    // Деструктор
    ~Container();

    // Получает длину контейнера.
    int GetLength();
    // Ввод содержимого контейнера из указанного потока
    void In(FILE* input_file);
    // Случайный ввод содержимого контейнера
    void InRnd(int size);
    // Вывод содержимого контейнера в указанный поток
    void Out(FILE* output_file);

    // Считает сумму отношений года к длине названия всех элементов.
    double ProportionsSum();

    // Удаляет из контейнера элементы, у которых отношение меньше среднего.
    void DeleteLessThenAverageProportion();

private:
    void Clear();    // Очистка контейнера от данных
    // Удаляет элемент из контейнера по индексу.
    void DeleteElementByIndex(int index);
    int len; // текущая длина
    // Массив содержащий указатели на объекты Language.
    Language* storage[10000];
};


#endif //AVS_RAKHMATULLIN207_HW2_CONTAINER_H
