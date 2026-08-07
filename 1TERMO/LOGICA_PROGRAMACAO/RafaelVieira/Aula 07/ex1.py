# Escreva um programa que solicite ao usuário um número inteiro e calcule a media de uma lista de números. O programa deve tratar os seguintes erros:
# - ValueError: se o usuário digitar um valor que não seja um número inteiro.

lista = 0
for i in range(1, 6):
    try:
        num = int(input("Digite um número inteiro: "))
        lista += num
    except ValueError:
        print("Erro: Digite um valor inteiro: ")
        num = int(input("Digite um número inteiro: "))
        lista += num

print(f"Média: {lista/5}")        