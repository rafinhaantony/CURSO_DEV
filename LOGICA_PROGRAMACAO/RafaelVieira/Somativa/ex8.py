produzidas = int(input("Digite a quantidade de peças produzidas: "))
defeituosas = int(input("Digite a quantidade de peças defeituosas: "))
porcetagem = produzidas * (5/100)

if defeituosas < porcetagem:
    print("Revisar Processo")
else:
    print("Processo Otimizado!")