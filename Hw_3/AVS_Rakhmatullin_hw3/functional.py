import enum
from checkers import IsFactor


# Типизация языка
class Typization(enum.Enum):
    strict = 1
    dynamic = 2


# Функциональный язык
class Functional:
    def __init__(self):
        self.founding_year = 0
        self.popularity = 0
        self.typization = Typization.strict
        self.is_lazy = False

    # Считывает из списка строк параметры функ.языка
    def ReadStrArray(self, strArray, index):
        # должно быт как минимум 4 непрочитанных значения в массиве
        if index >= len(strArray) - 3:
            return 0
        if not IsFactor(strArray[index]) or not strArray[index + 1].isdigit() or \
                not strArray[index + 2].isdigit() or not strArray[index + 3].isdigit():
            return 0
        self.popularity = float(strArray[index])
        self.founding_year = int(strArray[index + 1])
        int_typization = int(strArray[index + 2])
        if int_typization == 1:
            self.typization = Typization.strict
        elif int_typization == 2:
            self.typization = Typization.dynamic
        else:
            return 0
        int_lazy = int(strArray[index + 3])
        if int_lazy == 1:
            self.is_lazy = True
        elif int_lazy == 0:
            self.is_lazy = False
        else:
            return 0
        index += 4
        return index

    # Выводит свойства элемента в консоль
    def Print(self):
        print("Functional: founding year = {}, popularity = {}, typization = {}".format(self.founding_year,
                                                                                        self.popularity,
                                                                                        self.typization.name))
        pass

    # Выводит свойства элемента в файл
    def Write(self, ostream):
        ostream.write(
            "Functional: founding year = {}, popularity = {}, typization = {}\nFounding year to popularity "
            "proportion = {}".format \
                (self.founding_year, self.popularity, self.typization.name, self.Proportion()))
        pass

    # Считает отношение года создания к популярности
    def Proportion(self):
        return self.founding_year / self.popularity
