# Escrever um programa mais simples com testes de tratamentos de erros, como por exemplo, solicitar ao usuário um número. O programa deve tratar os seguintes erros:
# - ValueError: se o usuário digitar um valor que não seja um número.
# - ZeroDivisionError: se o usuário digitar zero como divisor.

try:
    num1 = int(input("Informe o primeiro número: "))
    num2 = int(input("Informe o segundo número: "))
    resultado = num1/num2
    print(f"O resultado da divisão é {resultado:.2f}")

except ValueError:
    print(f"Erro: Não é possível dividir por zero.")

except ZeroDivisionError:
    print(f"Erro: Você digitou um valor que não é um número.")