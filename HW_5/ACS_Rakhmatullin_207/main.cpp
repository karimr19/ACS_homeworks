#include <iostream>
#include <pthread.h>
#include <queue>
#include <unistd.h>

// Enum для определения владельца программы.
enum taskOwner {
    FIRST,
    SECOND,
    THIRD
};

// Кол-во задач каждого прогера.
int first_proger_tasks_cnt, second_proger_tasks_cnt, third_proger_tasks_cnt;
// Флаг определяющий первый вызов каждого прогера.
bool first_proger_first_call, second_proger_first_call, third_proger_first_call;
// Кол-во выполненных задач каждым прогером.
int first_proger_done_tasks_cnt, second_proger_done_tasks_cnt, third_proger_done_tasks_cnt;
// Суммарное кол-во задач.
int total_tasks_cnt;

unsigned int seed = 101;

// Mutex для получения доступа к портфелю задач.
pthread_mutex_t bag_mutex;
// Очередь задач на проверку каждого прогера.
std::queue<taskOwner> first_proger_tasks_to_check, second_proger_tasks_to_check, third_proger_tasks_to_check;

// Первый прогер пишет программу.
void firstProgerWritesProgram();

// Первый прогер проверяет программу.
void firstProgerChecksProgram();

// Второй прогер пишет программу.
void secondProgerWritesProgram();

// Второй прогер проверяет программу.
void secondProgerChecksProgram();

// Третий прогер пишет программу.
void thirdProgerWritesProgram();

// Третий прогер проверяет программу.
void thirdProgerChecksProgram();

void* firstProger(void* arg) {
    // Обращаемся к портфелю задач, проверяем кол-во оставшихся задач.
    while(total_tasks_cnt > 0) {
        // Синхронизация по mutex портфеля задач.
        pthread_mutex_lock(&bag_mutex);
        if (first_proger_first_call) {
            firstProgerWritesProgram();
            firstProgerChecksProgram();
            first_proger_first_call = false;
        } else {
            firstProgerChecksProgram();
            firstProgerWritesProgram();
        }
        pthread_mutex_unlock(&bag_mutex);
        // Поток засыпает на секунду.
        sleep(1);
    }
    return nullptr;
}

void firstProgerChecksProgram() {
    if (!first_proger_tasks_to_check.empty()) {
        if (first_proger_tasks_to_check.back() == SECOND) {
            // Случайно отмечаем программу верной или не верной.
            if ((rand() % 2) == 0) {
                --second_proger_tasks_cnt;
                --total_tasks_cnt;
                std::cout << "прогер 1 проверил прогу " + std::to_string(second_proger_done_tasks_cnt) +
                             " прогера 2 и отметил как выполненную\n";
                ++second_proger_done_tasks_cnt;
            } else {
                std::cout << "прогер 1 проверил прогу " + std::to_string(second_proger_done_tasks_cnt) +
                             " прогера 2 и отметил как НЕвыполненную\n";
            }
        } else {
            // Случайно отмечаем программу верной или не верной.
            if ((rand() % 2) == 0) {
                --third_proger_tasks_cnt;
                --total_tasks_cnt;
                std::cout << "прогер 1 проверил прогу " + std::to_string(third_proger_done_tasks_cnt) +
                             " прогера 3 и отметил как выполненную\n";
                ++third_proger_done_tasks_cnt;
            } else {
                std::cout << "прогер 1 проверил прогу " + std::to_string(third_proger_done_tasks_cnt) +
                             " прогера 3 и отметил как НЕвыполненную\n";
            }
        }
        first_proger_tasks_to_check.pop();
    }
}

void firstProgerWritesProgram() {
    if (first_proger_tasks_cnt > 0) {
        // Случайно выбирает, кому отправить программу.
        if ((rand() % 2) == 0) {
            second_proger_tasks_to_check.push(FIRST);
            std::cout << "прогер 1 написал прогу " + std::to_string(first_proger_done_tasks_cnt) +
                         " и отправил на проверку прогеру 2\n";
        } else {
            third_proger_tasks_to_check.push(FIRST);
            std::cout << "прогер 1 написал прогу " + std::to_string(first_proger_done_tasks_cnt) +
                         " и отправил на проверку прогеру 3\n";
        }
    }
}

void* secondProger(void* arg) {
    // Обращаемся к портфелю задач, проверяем кол-во оставшихся задач.
    while(total_tasks_cnt > 0) {
        // Синхронизация по mutex портфеля задач.
        pthread_mutex_lock(&bag_mutex);
        if (second_proger_first_call) {
            secondProgerWritesProgram();
            secondProgerChecksProgram();
            second_proger_first_call = false;
        } else {
            secondProgerChecksProgram();
            secondProgerWritesProgram();
        }
        pthread_mutex_unlock(&bag_mutex);
        // Поток засыпает на секунду.
        sleep(1);
    }
    return nullptr;
}

void secondProgerChecksProgram() {
    if (!second_proger_tasks_to_check.empty()) {
        if (second_proger_tasks_to_check.back() == FIRST) {
            // Случайно отмечаем программу верной или не верной.
            if ((rand() % 2) == 0) {
                --first_proger_tasks_cnt;
                --total_tasks_cnt;
                std::cout << "прогер 2 проверил прогу " + std::to_string(first_proger_done_tasks_cnt) +
                             " прогера 1 и отметил как выполненную\n";
                ++first_proger_done_tasks_cnt;
            } else {
                std::cout << "прогер 2 проверил прогу " + std::to_string(first_proger_done_tasks_cnt) +
                             " прогера 1 и отметил как НЕвыполненную\n";
            }
        } else {
            // Случайно отмечаем программу верной или не верной.
            if ((rand() % 2) == 0) {
                --third_proger_tasks_cnt;
                --total_tasks_cnt;
                std::cout << "прогер 2 проверил прогу " + std::to_string(third_proger_done_tasks_cnt) +
                             " прогера 3 и отметил как выполненную\n";
                ++third_proger_done_tasks_cnt;
            } else {
                std::cout << "прогер 2 проверил прогу " + std::to_string(third_proger_done_tasks_cnt) +
                             " прогера 3 и отметил как НЕвыполненную\n";
            }
        }
        second_proger_tasks_to_check.pop();
    }
}

void secondProgerWritesProgram() {
    if (second_proger_tasks_cnt > 0) {
        // Случайно выбирает, кому отправить программу.
        if ((rand() % 2) == 0) {
            first_proger_tasks_to_check.push(SECOND);
            std::cout << "прогер 2 написал прогу " + std::to_string(second_proger_done_tasks_cnt) +
                         " и отправил на проверку прогеру 1\n";
        } else {
            third_proger_tasks_to_check.push(SECOND);
            std::cout << "прогер 2 написал прогу " + std::to_string(second_proger_done_tasks_cnt) +
                         " и отправил на проверку прогеру 3\n";
        }
    }
}

void* thirdProger(void* arg) {
    // Обращаемся к портфелю задач, проверяем кол-во оставшихся задач.
    while(total_tasks_cnt > 0) {
        // Синхронизация по mutex портфеля задач.
        pthread_mutex_lock(&bag_mutex);
        if (third_proger_first_call) {
            thirdProgerWritesProgram();
            thirdProgerChecksProgram();
            third_proger_first_call = false;
        } else {
            thirdProgerChecksProgram();
            thirdProgerWritesProgram();
        }
        pthread_mutex_unlock(&bag_mutex);
        // Поток засыпает на секунду.
        sleep(1);
    }
    return nullptr;
}

void thirdProgerChecksProgram() {
    if (!third_proger_tasks_to_check.empty()) {
        if (third_proger_tasks_to_check.back() == FIRST) {
            // Случайно отмечаем программу верной или не верной.
            if ((rand() % 2) == 0) {
                --first_proger_tasks_cnt;
                --total_tasks_cnt;
                std::cout << "прогер 3 проверил прогу " + std::to_string(first_proger_done_tasks_cnt) +
                             " прогера 1 и отметил как выполненную\n";
                ++first_proger_done_tasks_cnt;
            } else {
                std::cout << "прогер 3 проверил прогу " + std::to_string(first_proger_done_tasks_cnt) +
                             " прогера 1 и отметил как НЕвыполненную\n";
            }
        } else {
            // Случайно отмечаем программу верной или не верной.
            if ((rand() % 2) == 0) {
                --second_proger_tasks_cnt;
                --total_tasks_cnt;
                std::cout << "прогер 3 проверил прогу " + std::to_string(second_proger_done_tasks_cnt) +
                             " прогера 2 и отметил как выполненную\n";
                ++second_proger_done_tasks_cnt;
            } else {
                std::cout << "прогер 3 проверил прогу " + std::to_string(second_proger_done_tasks_cnt) +
                             " прогера 2 и отметил как НЕвыполненную\n";
            }
        }
        third_proger_tasks_to_check.pop();
    }
}

void thirdProgerWritesProgram() {
    if (third_proger_tasks_cnt > 0) {
        // Случайно выбирает, кому отправить программу.
        if ((rand() % 2) == 0) {
            first_proger_tasks_to_check.push(THIRD);
            std::cout << "прогер 3 написал прогу " + std::to_string(third_proger_done_tasks_cnt) +
                         " и отправил на проверку прогеру 1\n";
        } else {
            second_proger_tasks_to_check.push(THIRD);
            std::cout << "прогер 3 написал прогу " + std::to_string(third_proger_done_tasks_cnt) +
                         " и отправил на проверку прогеру 2\n";
        }
    }
}

// Читает кол-во задач для программиста с валидацией.
int readTasksCnt(int index) {
    int x;
    do{
        std::cout << "Введите число задач для программиста "<< index + 1 << " (целое число от 1 до 10):\n";
        std::cin >> x;
        if (std::cin.fail())
        {
            std::cin.clear();
            std::cin.ignore(32767,'\n');
        }
    } while ((x < 1) || (x > 10));
    return x;
}

// Установка дефолтных значений.
void setDefaults() {
    srand(seed);
    first_proger_tasks_to_check = std::queue<taskOwner>();
    second_proger_tasks_to_check = std::queue<taskOwner>();
    third_proger_tasks_to_check = std::queue<taskOwner>();
    first_proger_first_call = second_proger_first_call = third_proger_first_call = true;
    first_proger_done_tasks_cnt = second_proger_done_tasks_cnt = third_proger_done_tasks_cnt = 1;
    first_proger_tasks_cnt = readTasksCnt(0);
    second_proger_tasks_cnt = readTasksCnt(1);
    third_proger_tasks_cnt = readTasksCnt(2);
    total_tasks_cnt = first_proger_tasks_cnt + second_proger_tasks_cnt + third_proger_tasks_cnt;
}

int main() {
    setDefaults();
    // Инициализирует мютекс.
    pthread_mutex_init(&bag_mutex, nullptr);
    pthread_t first_proger, second_proger, third_proger;
    // Создает и запускает поток первого прогера.
    pthread_create(&first_proger, nullptr, firstProger, nullptr);
    // Создает и запускает поток второго прогера.
    pthread_create(&second_proger, nullptr, secondProger, nullptr);
    // Создает и запускает поток третьего прогера.
    pthread_create(&third_proger, nullptr, thirdProger, nullptr);
    // Дожидается окончания работы первого прогера.
    pthread_join(first_proger, nullptr);
    // Дожидается окончания работы второго прогера.
    pthread_join(second_proger, nullptr);
    // Дожидается окончания работы третьего прогера.
    pthread_join(third_proger, nullptr);
    std::cout << "Программисты выполнили свою работу и пошли отдыхать!";
}

