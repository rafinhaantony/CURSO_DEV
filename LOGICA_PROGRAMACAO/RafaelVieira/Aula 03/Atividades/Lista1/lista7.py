pecas = int(input("Digite o número de peças produzidas: "))
pecasd = int(input("Digite o número de peças defeiuosas: "))
pecasboas = pecas-pecasd

total = pecasboas/pecas

print(f"Peças boas: {pecas}")
print(f"Peças defeituosas: {pecasd}")

print(f"Aproveitamento de peças: {total:.2f}%")