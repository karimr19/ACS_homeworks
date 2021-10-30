import enum
from checkers import IsFactor


# Тип наследования объектно-ориентированного языка
class InheritanceType(enum.Enum):
    single = 1
    multiple = 2
    interface = 3


# object_oriented.py - содержит функции обработки объектно-ориентированного языка
class ObjectOriented:
    def __init__(self):
        self.founding_year = 0
        self.popularity = 0
        self.inheritance_type = InheritanceType.single

    # Считывает из списка строк параметры ОО языка
    def ReadStrArray(self, strArray, index):
        # должно быт как минимум 3 непрочитанных значения в массиве
        if index >= len(strArray) - 2:
            return 0
        if not IsFactor(strArray[index]) or not strArray[index + 1].isdigit() or \
                not strArray[index + 2].isdigit():
            return 0
        self.popularity = float(strArray[index])
        self.founding_year = int(strArray[index + 1])
        int_inheritance = int(strArray[index + 2])
        if int_inheritance == 1:
            self.inheritance_type = InheritanceType.single
        elif int_inheritance == 2:
            self.inheritance_type = InheritanceType.multiple
        elif int_inheritance == 3:
            self.inheritance_type = InheritanceType.interface
        else:
            return 0
        index += 3
        return index

    # Выводит свойства элемента в консоль
    def Print(self):
        print("Object-oriented: founding year = {}, popularity = {}, inheritance = {}".format(self.founding_year,
                                                                                              self.popularity,
                                                                                              self.inheritance_type.name))
        pass

    # Выводит свойства элемента в файл
    def Write(self, ostream):
        ostream.write(
            "Object-oriented: founding year = {}, popularity = {}, inheritance = {}\nFounding year to popularity "
            "proportion = {}".format \
                (self.founding_year, self.popularity, self.inheritance_type.name, self.Proportion()))
        pass

    # Считает отношение года создания к популярности
    def Proportion(self):
        return self.founding_year / self.popularity
