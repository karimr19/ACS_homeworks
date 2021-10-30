# container.py - содержит функции обработки контейнера

import random

import procedural
import functional
import object_oriented


# Простейший контейнер на основе списка
class Container:
    # Конструктор контейнера
    def __init__(self):
        self.store = []

    # Выводит элементы контейнера в консоль
    def Print(self):
        print("Container stores", len(self.store), "languages:")
        for language in self.store:
            language.Print()
        pass

    # Выводит числовые характеристики контейнера
    def PrintCharacteristics(self):
        print(("Sum of Proportions  = {}".format(self.Proportion())))
        if len(self.store) != 0:
            print("Proportion average = {}".format(self.Proportion() / len(self.store)))

    # Считает сумму пропорций элементов
    def Proportion(self):
        total_proportion = 0.0
        for language in self.store:
            total_proportion += language.Proportion()
        return total_proportion

    # Выводит элементы контейнера в файл
    def Write(self, ostream):
        ostream.write("Container stores {} languages:\n".format(len(self.store)))
        for language in self.store:
            language.Write(ostream)
            ostream.write("\n")
        pass

    # Выводит числовые характеристики контейнера в файл
    def WriteCharacteristics(self, ostream):
        ostream.write("Sum of Proportions  = {}\n".format(self.Proportion()))
        if len(self.store) != 0:
            ostream.write("Proportion average = {}\n".format(self.Proportion() / len(self.store)))
        ostream.write("Changed container:\n")

    # Удаляет из контейнера элементы, у которых отношение меньше среднего.
    def DeleteLessThanAverageProportion(self):
        i = 0
        elements_cnt = len(self.store)
        if elements_cnt != 0:
            average_value = self.Proportion() / elements_cnt
        while elements_cnt > 0 and i < elements_cnt:
            if self.store[i].Proportion() < average_value:
                self.store.pop(i)
                i -= 1
                elements_cnt -= 1
            i += 1

    # Случайный ввод содержимого контейнера
    @staticmethod
    def InRnd(input_container, size):
        for i in range(size):
            key = random.randint(1, 3)
            if key == 1:
                language = procedural.Procedural()
                language.popularity = random.uniform(0, 1) * 100
                language.founding_year = 1990 + random.randint(0, 120)
                language.is_abstract = random.randint(0, 1) == 1
            elif key == 2:
                language = object_oriented.ObjectOriented()
                language.popularity = random.uniform(0, 1) * 100
                language.founding_year = 1990 + random.randint(0, 120)
                inheritance_type = random.randint(1, 3)
                if inheritance_type == 1:
                    language.inheritance_type = object_oriented.InheritanceType.single
                elif inheritance_type == 2:
                    language.inheritance_type = object_oriented.InheritanceType.multiple
                else:
                    language.inheritance_type = object_oriented.InheritanceType.interface
            else:
                language = functional.Functional()
                language.popularity = random.uniform(0, 1) * 100
                language.founding_year = 1990 + random.randint(0, 120)
                if random.randint(0, 1) == 0:
                    language.typization = functional.Typization.strict
                else:
                    language.typization = functional.Typization.dynamic
                language.is_lazy = random.randint(0, 1) == 0
            input_container.store.append(language)