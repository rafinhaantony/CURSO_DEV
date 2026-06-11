produto = input("Nome do produto: ")
quantidade = int(input("Quantidade vendida: "))
preço = float(input("Preço unitário: "))
total = preço * quantidade

print("Relatório de vendas: ")

print(f"Produto: {produto}")
print(f"Quantidade vendida: {quantidade}")
print(f"Preço unitário: {preço}")
print(f"Total de vendas: R${total}")