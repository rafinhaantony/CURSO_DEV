# Exercio 02
# Criar um algoritmo para demonstrar a sinalização de um semáforo

sinal = input("Escolha a cor que o semáforo deve mostrar: ")
print("\nPara verde: 1\n")
print("Para amarelo: 2\n")
print("Para vermelho: 3")

cor = int(input("Qual cor você quer que seja sinalizado no semáforo?"))
if cor == 1:
    print("Cor sinalizada: Verde")
elif cor == 2:
    print("Cor sinalizada: Amarelo")
elif cor == 3:
    print("Cor sinalizada: Vermelho")
else:
    print("Essa cor não existe")