#Clean Code - Aula 06
#Para que usar?
#Como usar?
#print("Clean Code - Aula 06")
#aula = 6
#print(f"Estamos na aula {aula} de Clean Code")

#Manipulação de arquivos e texto
# texto = " Python é muito legal! "
# print(texto.strip().upper()) # "PYTHON"
# print(texto.strip().lower()) # "python"
# print(texto.strip().capitalize()) # "Python"
# print(texto.strip().title()) # "Python"
# print(texto.strip().replace(" ", "_")) # "Python"
# print(texto.strip().split()) # ["Python"]

# #Escrevendo
# with open("notas.txt", "w") as arquivo:
#     arquivo.write("Estudar Python hoje!")
#     arquivo.write("\nLer sobre Clean Code.")

# #Lendo
# with open ("notas.txt", "r") as arquivo:
#     conteudo = arquivo.read()
#     print(conteudo)

#Execução de comandos do sistema
import os # importa o módulo os para interagir com o sistema operacional

#Onde estou?
# print(os.getcwd())

# #Listar arquivos na pasta
# print(os.listdir())
# print(os.listdir("..")) #Lista arquivos da pasta pai
# print(os.listdir("..\\..")) #Lista arquivos da pasta avô
# print(os.listdir("C:\\")) #Lista arquivos da raiz do C
# print(os.listdir("C:\\Users")) #Lista arquivos da pasta de Users
# print(os.listdir("C:\\Users\\Public")) #Lista arquivos da pasta publica

#Outros comandos úteis
#Criar pasta
os.mkdir("nova_pasta")
# #Renomear pasta
os.rename("nova_pasta", "pasta_renomeada")
# #Excluir conta
os.rmdir("pasta_renomeada")