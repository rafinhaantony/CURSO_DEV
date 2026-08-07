#1. O laço 'for' (Repetições determinadas)
#Use o 'for' quando você sabe exatamente quantas vezes algo deve acontecer (como ler 10 sensores ou processsar uma lista de peças)
#Exemplo: Relatório de produção Diária
#Imagine que você tem uma meta de produzir 5 lotes e quer numerar cada um:

# Exemplo 01
# for lote in range(1,6):
#     print(f"Processando lote numero {lote}...")
#     print("Quantidade verificada. [OK]")
#     print("Produção do dia finalizada")

# Imagine que você queira armazenar 10 carros
# for carros in range(10):
#     print(f"Quantidade de carros: {carros}")

# Exemplo 02
# Contar até 4
# for i in range(5):
#     print(i)

# Exemplo 03
# pecas = ["Engrenagem", "Eixo", "Rolamento", "Parafuso"]
# maquinas = ["Máquina 1", "Máquina 2"]

# for item in pecas:
#     print(f"Item em estoque: {item}")
#     for maq in maquinas:
#         print(f"Máquinas que temos: {maq}")

# Exercicio 01
# 1. Contador de produção (for)
# Uma esteira processa 10 peças por ciclo. Crie um programa que 
# use um "for" para contar de 1 até 10 e, para cada número,
# imprima: "Peças nº X processada com sucesso". No final,
# exiba "Ciclo de produção concluído"

# for pecas in range(1,11):
#     print(f"Peça nº {pecas} processada com sucesso!")
# print("Ciclo de produção concluido!")

# Exercicio 02
# Imagine a produção de frutas em uma feira. Desejo apresentar as
# frutas banana, manga, melancia, abacaxi. Com uma quantidade de 10 
# bananas, 5 mangas, 10 melancias e 13 abacaxi.

# print("Bananas: ")
# for banana in range(1,11):
#     print("banana", banana)
# print("Mangas: ")
# for manga in range(1,6):
#     print("mangas", manga)
# print("Melancias: ")
# for melancia in range(1,11):
#     print("melancia", melancia)
# print("Abacaxi: ")
# for abacaxi in range(1,14):
#     print("abacaxi", abacaxi)

# Exercicio 03
# Montar uma tabuada, inicialmente pode ser usado por um valor fixo e depois usar a pergunta

# print("Tabuada")

# print("Tabuada do 9: ")
# num = 9

# for multiplicador in range(1,11):
#     print(f"{num} X {multiplicador} =", num*multiplicador)

# num = int(input("escolha um número para ver a tabuada: "))
# for multiplicador in range(1,11):
#     print(f"{num} X {multiplicador} =", num*multiplicador)

# O laço while (Repetições Inderteminadas)
# Use o while quando você não sabe quando vai parar. Ele depende de uma
#condição (como um sensor de segurança ou botão de emergência).
# Exemplo: Monitor de Temperatura (loop Infinito Controlado)

# Repete enquanto a temperatura estiver segura
# Inicio

# import time
# temperatura = 25
# while temperatura < 40:
#     print(f"Temperatura atual: {temperatura}°C. Sistema Operando...")
#     time.sleep(1)
#     temperatura += 3 # Simulando o aquecimento da máquina
# print("ALERTA! Temperatura atingiu o limite. Desligando motor...")

# Exemplo: Menu de Interação
# opcao = ""

# while opcao != "sair":
#     opcao = input("Digite a leitura do sensor ou 'sair' para fechar: ").lower()
#     if opcao != "sair":
#         print(f"Dado '{opcao}' registrado no banco de dados.")
# print("Sistema encerrado")
