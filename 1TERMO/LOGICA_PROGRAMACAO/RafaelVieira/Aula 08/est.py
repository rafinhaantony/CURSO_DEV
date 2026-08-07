# Projeto Cancela Automática
# Criar um algoritmo que consiga gerenciar entrada e saída de veículos, inserindo valores por hora permanecida.
# A forma de entrada e saída deve ser especificada e permitir o usuário inserir os dados necessários para registro do veículo
# Passos
# 1 - Pressionar botão, imprimiu o ticket
# Calcular tempo de permanencia
# Pagar o ticket
# Devolver ticket na saída
# Liberar e fechar cancelas

# 2 - Acesso por TAGs (Sem parar, Connect CAR...)
# Calcular tempo de permanencia
# Gerar pagamento em fatura
# Liberar e fechar cancelas

# 3 - Erros
# Verificar sinal de transmissão da TAG
# Verificar acesso por ticket ou tag ao mesmo tempo
# Perdeu ticket (levantar informações)
# Problemas com cancela

from time import sleep

print("Bem-vindo ao shopping do Rafael")
sleep(1.5)

print("MENU - Estacionamento")

while True:
    print("1. Acesso por ticket")
    print("2. Acesso por TAGs")

    try:
        resposta = int(input("Sua opção -> "))
        if resposta == 1:
            placa_carro = input("Informe a placa do seu veículo: ")
            hora_inicial = float(input("Horário de chegada: "))
            sleep(1.5)
            print(f"Veículo '{(placa_carro).upper()}' cadastrado com sucesso!")
            input("[ENTER] para retirada do ticket")
            sleep(1)
            print(f"Ticket {placa_carro}.{hora_inicial:.0f}")
            print("Acesso liberado! Seja bem-vindo")
            print("Cancela aberta")
            sleep(3)
            print("Cancela fechada")

            break
        elif resposta == 2:
            placa_carro = input("Informe a placa do veículo: ")
            hora_inicial = float(input("Horário de chegada: "))
            sleep(1.5)
            print(f"Veículo '{(placa_carro).upper()}' cadastrado com sucesso!")
            print("Acesso liberado! Seja bem-vindo")
            print("Cancela aberta")
            sleep(3)
            print("Cancela fechada")


    except ValueError:
        print("ERRO: Valor inválido, tente novamente")

print("Saída do estacionamento")
hora_saida = float(input("Informe o horário de saída: "))
tempo = hora_saida - hora_inicial
horas = int(tempo)
min = (tempo - horas) * 60
pagamento = horas * 10

sleep(0.5)
print("-------------------------------------")
print("\n| Nota de pagamento               |")
print("| Valor p/hora:              R$10.00|")
print("|-----------------------------------|")
print(f"|NOME DO VEÍCULO: {placa_carro.upper()}        |")
print(f"|Tempo: {horas:.0f}h{min:.0f}m")
print(f"|Valor a pagar:                          R${pagamento}       |")
