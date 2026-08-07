# Exercicio 01
# Tente criar um código que conte de 1 a 10, mas use o continue para não imprimir o número 5 (simulando uma falha de sensor específica no item 5).

from time import sleep
for i in range(1,11):
    if i == 5:
        print(f"Falha ao ler o número {i}")
        sleep(1.8)
        continue
    print(i)
    sleep(0.7)
print("Acabou!")