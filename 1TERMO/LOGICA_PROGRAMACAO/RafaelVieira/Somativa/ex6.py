print("Classificador de Lotes")

print("A) Alimentos")
print("E) Eletrônicos")

codigo = input("Insira o código do produto: ")

if codigo == "A":
    print("Você escolheu o lote ALIMENTOS")
elif codigo == "E":
    print("Você escolheu o lote ELETRÔNICOS")
else:
    print("Desconhecido")