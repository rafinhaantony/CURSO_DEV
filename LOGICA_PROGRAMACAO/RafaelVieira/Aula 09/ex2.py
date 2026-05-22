from time import sleep

ano_atual = 2026
funcionarios = {}


def menu():
    print("MENU - Brigada de Incêndio")
    print("1. Cadastrar Funcionários")
    print("2. Verificação de EPIs")
    print("3. Verificar Validade de Treinamento")
    print("4. Exibir Relatório")
    print("5. Sair")

def cadastro():
    print("Cadastro de Funcionários")
    funcionario = {}
    

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

