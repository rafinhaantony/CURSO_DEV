# Exercicio 1

def nome():
    nome = input("Digite seu nome: ")
    return nome
print(f"Olá, {nome()}")

def valores():
    print("Digite três valores")
    a = int(input("Digite o primeiro valor: "))
    b = int(input("Digite o segundo valor: "))
    c = int(input("Digite o terceiro valor: "))
    return a, b, c

print(f"O maior valor é: {max(valores())}")

nome()
valores()

# Exercicio 2

def calcular_dobro(numero):
    return numero * 2
print(calcular_dobro(5))