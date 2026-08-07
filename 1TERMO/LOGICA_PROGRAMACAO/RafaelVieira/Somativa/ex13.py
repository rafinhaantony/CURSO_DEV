senha = "admin123"
tentativas = 0
resposta = input("Digite senha do supervisor: ")
r = resposta
tentativas += 1

while r != senha:
    r = input("Acesso Negado, tente novamente: ")
    tentativas += 1
    if tentativas == 3:
        if r == senha:
            print("Acertou")
            break
        else:
            print("Painel bloqueado")
            break