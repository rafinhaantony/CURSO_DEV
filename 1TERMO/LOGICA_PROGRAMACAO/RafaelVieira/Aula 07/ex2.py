# Escreva um programa que solicite ao usuário uma lista de palavras e conte quantas vezes cada palavra aparece na lista. O programa deve tratar os seguintes erros:
# - ValueError: se o usuário digitar um valor que não seja uma string

try:
    palavras = input("Digite uam lista de palavras separadas por espaço: ").split()
    contagem = {}
    for palavra in palavras:
        if palavra in palavras:
            contagem[palavra] += 1
        else:
            contagem[palavra] = 1
    print("Contagem de palavras: ")
    for palavra, contagem in contagem.itens():
        print(f"{palavra}: {contagem}")
except ValueError:
    print("Erro: Entrada inválida. Por favor, digite uma lista de palvras serparadas por espaço.")