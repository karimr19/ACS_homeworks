#ifndef AVS_RAKHMATULLIN207_HW2_RND_H
#define AVS_RAKHMATULLIN207_HW2_RND_H

//------------------------------------------------------------------------------
// rnd.h - содержит генераторы случайных чисел
//------------------------------------------------------------------------------

#include <ctime>   // для функции time()

class Random {
public:
    // Конструктор с начальным и конечным значениями.
    Random(int f, int l) {
        if(f <= l) {
            first = f;
            last = l;
        } else {
            first = l;
            last = f;
        }
        // системные часы в качестве инициализатора
        srand(static_cast<unsigned int>(time(0)));
    }
    // Генерация случайного числа в заданном диапазоне
    int Get() {
        return rand() % (last - first + 1) + first;
    }

    // Генерация дробного числа от 0 до 1.
    static double GetDouble() {
        return (double)rand() / RAND_MAX;
    }

private:
    // Левая граница диапазона
    int first;
    // Правая граница диапазона.
    int last;
};

#endif //AVS_RAKHMATULLIN207_HW2_RND_H
