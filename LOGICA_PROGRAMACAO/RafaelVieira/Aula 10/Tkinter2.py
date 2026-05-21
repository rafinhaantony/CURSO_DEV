import tkinter as tk
from tkinter import messagebox

def saudar_usuario():

    nome = campo_nome.get()

    if nome == "":
        messagebox.showwarning("Aviso", "Por favor, digite seu nome!")
    else:
        messagebox.showinfo("Saudações Alunos", f"olá, {nome}! Seja bem-vindo ao mundo da interfaces gráficas")

# Configurações da janela
app = tk.Tk()
app.title("Exemplo 1")
app.geometry("1200x800")

# Componentes
lbl_instrução = tk.Label(app, text="Digite seu nome abaixo:")
lbl_instrução.pack(pady=10)

campo_nome = tk.Entry(app, font=("Arial", 12))
campo_nome.pack(pady=5)

btn_enviar = tk.Button(app, text="Enviar", command=saudar_usuario)
btn_enviar.pack(pady=15)

app.mainloop()