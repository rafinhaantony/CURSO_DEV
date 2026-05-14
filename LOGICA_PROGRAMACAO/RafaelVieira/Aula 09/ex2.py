from time import sleep

ano_atual = 2026
funcionarios = {}


def menu():
    print("MENU - Brigada de Incêndio")
    print("1. Cadastrar Funcionários")
    print("2. Verificação de EPIs")
    print("3. Verificar Validade de Treinamento")

def cadastro():
    print("Cadastro de Funcionários")
    nome_funcionario = input("Informe o nome do funcionário: ")
    setor_funcionario = input("Informe o setor do funcionário: ")
    status = input("Informe o status dos treinamentos [NR-10, NR-35 e Brigada]: ")
    print(f"Funcionário {nome_funcionario} cadastrado com sucesso!")
    print(f"Setor: {setor_funcionario}")
    print(f"Status: {status}")
    sleep(3)
    return nome_funcionario, setor_funcionario, status

def verificação_epi():
    print("1. Elétrica")
    print("2. Mecânica")
    print("3. DEVIS")
    print("4. Logística")
    resposta = int(input("Informe seu setor: "))
    if resposta == 1:
        print("Setor Elétrico")
        print("Obrigatoriedade de Uniforme Técnico")
        print("Obrigatoriedade de luvas de alta tensão")
        print("Obrigatoriedade de botas dielétricas")
        print("Obrigatoriedade de óculos de segurança")
        print("Obrigatoriedade de protetor auditivo")

    elif resposta == 2:
        print("Setor Mecânico")
        print("Obrigatoriedade de Uniforme Técnico")
        print("Obrigatoriedade de luvas de segurança")
        print("Obrigatoriedade de óculos de segurança")
        print("Obrigatoriedade de botas de segurança")
        print("Obrigatoriedade de protetor auditivo")

    elif resposta == 3:
        print("Setor Desenvolvimento de Sistemas")
        print("Obrigatoriedade de Uniforme Técnico")
    
    elif resposta == 4:
        print("Setor Logística")
        print("Obrigatoriedade de Uniforme Técnico")
    else:
        print("Dados Inválidos!")

