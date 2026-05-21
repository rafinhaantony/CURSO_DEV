# TKINTER

# Componentes Widgets
# tk: Tk() # Janela
# lb: Label() # Rótulo
# bt: Button() # Botão
# et: Entry() # Caixa de texto

import tkinter as tk
from tkinter import messagebox

# 1. Criar a janela principal
janela = tk.Tk()
janela.title("Minha primeira Janela GUI")
janela.geometry("1200x800") # Largura x Altura

# 2. Criar a função do botão (evento)
def mostrar_mensagem():
    messagebox.showinfo("Sucesso!", "Você clicpou no botão")

# 3. Criar os componentes
lbl_titulo = tk.Label(janela, text="Bem vindo a nossa aula de Tkinter", font=("Arial", 14, "bold"))
btn_clique = tk.Button(janela, text="Clique Aqui", font=("Arial", 11), bg="#2e72cc", fg="white", command=mostrar_mensagem)

# 4. Posicionar os componentes
lbl_titulo.pack(pady=20) # 'pady' adiciona um espaçamento vertical
btn_clique.pack(pady=10)

# 5. Rodar o loop da interface
janela.mainloop()