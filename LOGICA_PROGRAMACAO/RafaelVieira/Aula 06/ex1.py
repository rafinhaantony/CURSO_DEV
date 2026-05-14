# Exercicio 01
# Crie um script que mostre o caminho da pasta atual
# import os

# print(os.getcwd())

# Exercicio 02
# Liste os arquivos da pasta atual
# import os

# print(os.listdir())

# Exercicio 03
# import os

# os.mkdir("nova_pasta")
# os.rename("nova_pasta", "pasta_renomeada")
# os.rmdir("pasta_renomeada")

# Exercicio 04
# with open("log.txt", "w") as arquivo:
#     arquivo.write("Log de atividades")

# with open("log.txt", "r") as arquivo:
#     texto= arquivo.read()
#     print(texto)

# Exemplo de dicionário:
pessoa = {
    "nome": "Rafael",
    "idade": 15,
    "cidade": "Limeira"
}
print(pessoa["nome"])

# Exercicio 05
# Desligar o PC (comando para windows)
with open("desliga.bat", "w") as desligar:
    desligar.write("shutdown -s -t 3600 -c \"Desligamento programado para daqui a 01 hora. Salve seu trabalho!\"")
    # -s comando para desligar
    # -t tempo definir
    # -a cancelar desligamento

with open("desliga.bat", "r") as desligar:
    conteudo = desligar.read()
    print(conteudo)