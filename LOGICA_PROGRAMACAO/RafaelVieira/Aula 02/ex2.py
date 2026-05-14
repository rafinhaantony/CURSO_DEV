# Exercicio 2:
# Calculadora de IMC (Potência e Divisão)
# O Índice de Massa Corporal (IMC) é calculado dividindo o peso pela altura ao quadrado (peso / altura * altura)

print("Bem-Vindo a nossa calculadora de IMC")

peso = float (input("Qual é seu peso? "))
altura = float(input("Qual é a sua alura? "))

altura2 = altura * altura
imc = peso / altura2

print("O seu IMC é igual a: ", imc)