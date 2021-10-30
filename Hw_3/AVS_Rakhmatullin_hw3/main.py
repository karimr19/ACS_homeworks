import sys

from extender import *

if __name__ == '__main__':
    start_time = time()
    # Проверка количества аргументов на корректность.
    if len(sys.argv) != 5:
        ErrMessage1()
        exit(1)
    print('==> Start')

    container = Container()

    if sys.argv[1] == '-f':
        inputFileName = sys.argv[2]
        # Чтение исходного файла, содержащего данные, разделенные пробелами и переводами строки
        try:
            ifile = open(inputFileName)
            input_string = ifile.read()
            ifile.close()
        except Exception:
            print("Невозможно открыть файл: {}!".format(inputFileName))
        # Формирование массива строк, содержащего чистые данные в виде массива строк символов.
        strArray = input_string.replace("\n", " ").split(" ")
        languageNum = ReadStrArray(container, strArray)
    elif sys.argv[1] == '-n':
        if not sys.argv[2].isdigit():
            ErrMessage2()
            exit(2)
        size = int(sys.argv[2])
        if size < 1 or size > 10000:
            print('Неправильное количество языков = {}. Оно должно быть больше 0 и меньше 10001'.format(size))
            exit(3)
        # Заполнение контейнера генератором случайных чисел
        Container.InRnd(container, size)
        languageNum = size
    else:
        ErrMessage2()
        exit(2)

    container.Print()
    container.PrintCharacteristics()
    # Открывает первый файл для вывода.
    try:
        ofile = open(sys.argv[3], 'w')
        # Вывод контейнера в файл
        container.Write(ofile)
        ofile.close()
    except Exception:
        print("Невозможно открыть файл: {}!".format(sys.argv[3]))
        exit(4)

    # Открывает второй файл для вывода.
    try:
        ofile = open(sys.argv[4], 'w')
        # Вывод результатов выполнения дополнительной функции и измененного контейнера в файл.
        container.WriteCharacteristics(ofile)
        container.DeleteLessThanAverageProportion()
        container.Write(ofile)
        ofile.close()
    except Exception:
        print("Невозможно открыть файл: {}!".format(sys.argv[4]))
        exit(4)

    print('After changes')
    container.Print()
    container.PrintCharacteristics()


    print('==> Finish')
    print('--- {} seconds'.format(time() - start_time))
