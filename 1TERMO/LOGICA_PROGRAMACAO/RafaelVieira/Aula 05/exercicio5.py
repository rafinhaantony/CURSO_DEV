# Exercicio 05

pressao = float(input("Pressão atual: "))
horas = int(input("Horas acumuladas: "))

if pressao > 100 and horas > 10000:
    print("PARADA IMEDIATA: Risco de falha catastrófica")

if pressao > 80:
    print("MANUTENÇÂO AGENDADA: Pressão acima do ideal")

elif pressao < 100:
     print("MANUTENÇÂO AGENDADA: Pressão acima do ideal")