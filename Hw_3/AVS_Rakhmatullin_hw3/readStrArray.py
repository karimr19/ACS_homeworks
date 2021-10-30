from extender import *


# Заполняет контейнер, читая контейнер строк
def ReadStrArray(container, strArray):
    arrayLen = len(strArray)
    i = 0   # Индекс, задающий текущую строку в массиве
    langNum = 0
    while i < arrayLen:
        str = strArray[i]
        if not str.isdigit():
            return langNum
        key = int(str)   # преобразование в целое
        if key == 1: # признак процедурного языка
            i += 1
            language = procedural.Procedural()
            i = language.ReadStrArray(strArray, i) # чтение процедурного языка с возвратом позиции за ним
        elif key == 2: # признак объектно-ориентированного языка
            i += 1
            language = object_oriented.ObjectOriented()
            i = language.ReadStrArray(strArray, i) # чтение объектно-ориентированного языка с возвратом позиции за ним
        elif key == 3:
            i += 1
            language = functional.Functional()
            i = language.ReadStrArray(strArray, i)
        else:
            return langNum
        if i == 0:
            return langNum
        langNum += 1
        container.store.append(language)
    return langNum