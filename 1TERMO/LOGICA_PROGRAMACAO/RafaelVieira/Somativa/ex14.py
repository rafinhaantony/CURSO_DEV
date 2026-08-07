estoque = 100

print("1- Adicionar itens")
print("2- Remover itens")
print("3- Sair")
while True:
    opc = int(input("Sua opção: "))
    if opc == 1:
        add = int(input("Quantos intens você deseja adicionar ao estoque?: "))
        estoque += add
        print(f"Estoque: {estoque} itens")
        if estoque < 10:
            print("Estoque Crítico!")

    elif opc == 2:
        remover = int(input("Quantos itens você deseja remover do estoque?: "))
        estoque -= remover
        print(f"Estoque: {estoque} itens")
        if estoque < 10:
            print("Estoque Crítico!")

    elif opc == 3:
        print("Saindo do sistema...")
        break
