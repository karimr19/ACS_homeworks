# checkers.py - реализует функции вывода исключений и проверки корректности ввода.

# Вывод информации о том, что входная строка не верна.
def ErrMessage1():
    print("incorrect command line!\n"
          "  Waited:\n"
          "     command -f infile outfile01 outfile02\n"
          "  Or:\n"
          "     command -n number outfile01 outfile02\n")


# Вывод иформации о том, что значение квалификатора неверное.
def ErrMessage2():
    print("incorrect qualifier value!\n"
          "  Waited:\n"
          "     command -f infile outfile01 outfile02\n"
          "  Or:\n"
          "     command -n number outfile01 outfile02\n")


# Проверяет, является ли строка дробным числом
def IsFactor(string):
    if not string.isdigit():
        try:
            float(string)
            return True
        except ValueError:
            return False
    return False
