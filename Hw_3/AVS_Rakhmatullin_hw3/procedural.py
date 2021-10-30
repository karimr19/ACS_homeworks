from checkers import IsFactor


# procedural.py - содержит функции обработки процедурного языка
class Procedural:
    def __init__(self):
        self.is_abstract = False
        self.founding_year = 0
        self.popularity = 0

    # Считывает из списка строк параметры процедурного языка
    def ReadStrArray(self, str_array, index):
        # должно быт как минимум три непрочитанных значения в массиве
        if index >= len(str_array) - 2:
            return 0
        if not IsFactor(str_array[index]) or not str_array[index + 1].isdigit() or \
                not str_array[index + 2].isdigit():
            return 0
        self.popularity = float(str_array[index])
        self.founding_year = int(str_array[index + 1])
        self.is_abstract = int(str_array[index + 2]) == 1
        index += 3
        return index

    # Выводит свойства элемента в консоль
    def Print(self):
        print("Procedural: founding year = {}, popularity = {}, is abstract = {}".format(self.founding_year,
                                                                                         self.popularity,
                                                                                         self.is_abstract))
        pass

    # Выводит свойства элемента в файл
    def Write(self, ostream):
        ostream.write("Procedural: founding year = {}, popularity = {}, is abstract = {}\nFounding year to popularity "
                      "proportion = {}".format \
                          (self.founding_year, self.popularity, self.is_abstract, self.Proportion()))
        pass

    # Считает отношение года создания к популярности
    def Proportion(self):
        return self.founding_year / self.popularity
