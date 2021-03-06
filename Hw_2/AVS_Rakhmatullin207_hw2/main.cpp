#include <iostream>
#include <string.h>
#include "checkers.h"
#include "container.h"

int main(int argc, char* argv[]) {
    clock_t start_time = clock();
    // Проверка количества аргументов на корректность.
    if(argc != 5) {
        ErrMessage1();
        return 1;
    }

    printf("Start\n");

    Container c;

    if(!strcmp(argv[1], "-f")) {
        FILE* input_file = fopen(argv[2], "r");
        c.In(input_file);
    }
    else if(!strcmp(argv[1], "-n")) {
        auto size = strtol(argv[2], &argv[2], 0);
        if((size < 1) || (size > 10000)) {
            printf("incorrect number of languages = %d. Set 0 < number <= 10000\n", size);
            return 3;
        }

        srand(static_cast<unsigned int>(time(0)));
        // Заполнение контейнера генератором случайных чисел
        c.InRnd(int(size));
    }
    else {
        ErrMessage2();
        return 2;
    }

    // Открывает первый файл для вывода.
    FILE *outputFile1;
    if(!(outputFile1 = fopen(argv[3], "w+"))) {
        perror("Невозможно открыть файл!");
        exit(EXIT_FAILURE);
    }
    // Вывод контейнера в файл
    fprintf(outputFile1, "Filled container:\n");
    c.Out(outputFile1);
    fclose(outputFile1);

    // Открывает второй файл для вывода.
    FILE *outputFile2;
    if(!(outputFile2 = fopen(argv[4], "w+"))) {
        perror("Невозможно открыть файл!");
        exit(EXIT_FAILURE);
    }

    double proportion_sum = c.ProportionsSum();
    // Вывод результатов выполнения дополнительной функции и измененного контейнера в файл.
    fprintf(outputFile2, "Proportion sum = %lf\n", proportion_sum);
    fprintf(outputFile2, "Proportion average = %f\n", proportion_sum / c.GetLength());
    fprintf(outputFile2, "Changed container:\n");
    c.DeleteLessThenAverageProportion();
    c.Out(outputFile2);
    fclose(outputFile2);

    printf("Stop\n");
    printf("Seconds: %f\n", ((double)(clock() - start_time)) / CLOCKS_PER_SEC);
    return 0;
}
