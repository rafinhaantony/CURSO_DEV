# Exercicio 03
# Criar um algoritmo para aplicação de descontos para produtos como sapatos aplicar 10%, para produtos como roupas 5% e produtos como perfumes 2%

print("\n--Descontos da loja--")

print("Defina o produto comprado: ")
print("Para sapatos digite 1")
print("Para roupas digite 2")
print("Para perfumes digite 3")

produto = int(input("Qual produto foi comprado?: "))
quantidade = int(input("Quantidade do produto: "))
preço = float(input("\nDigite o preço do produto: "))

total = quantidade*preço
tot1 = total * (10/100)
tot2 = total * (5/100)
tot3 = total * (2/100)

if produto == 1:
    print("Sapatos tem descontos de 10%")
elif produto == 2:
    print("Roupas tem descontos de 5%")
elif produto == 3:
    print("Perfumes tem desconto de 2%")
else:
    print("Esse produto não está na loja")

if produto == 1:
    print("Valor total do produto com desconto de 10% é de {}R$", (total-tot1))
elif produto == 2:
    print("Valor total do produto com desconto de 5% é de {}R$", (total-tot2))
else:
    print("Valor total do produto com desconto de 2% é de {}R$", (total-tot3))