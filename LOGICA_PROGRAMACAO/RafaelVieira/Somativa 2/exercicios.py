# Exercício 1: Registro de Operador

# import tkinter as tk
# from tkinter import messagebox, ttk

# def registrar_operador():
#     nome = ent_nome.get()
#     turno = ent_turno.get()

#     if nome == "" and turno == "":
#         messagebox.showwarning("Aviso", "Digite o nome e o turno do operador")
#     else:
#         messagebox.showinfo("Registro", f"Operador {nome} registrado no Turno {turno}. Boa jornada!")

# janela = tk.Tk()
# janela.title("Registro de Operador")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_nome = tk.Label(janela, text="Digite o nome do operador:", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_nome.grid(row=0, column=0, pady=10, padx=10)

# ent_nome = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_nome.grid(row=0, column=1, pady=10, padx=10)

# lbl_turno = tk.Label(janela, text="Digite o turno (A, B ou C):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_turno.grid(row=1, column=0, pady=10, padx=10)

# ent_turno = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_turno.grid(row=1, column=1, pady=10, padx=10)

# btn_registrar = tk.Button(janela, text="Registrar", font=("Arial", 14), fg="green", command=registrar_operador)
# btn_registrar.grid(row=2, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=3, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 2: Cálculo de Produção

# import tkinter as tk
# from tkinter import messagebox, ttk

# def calcular_producao():
#     pecas_hora = ent_pecas.get()

#     if pecas_hora == "":
#         messagebox.showwarning("Aviso", "Digite a quantidade de peças")
#     else:
#         total = int(pecas_hora) * 8
#         messagebox.showinfo("Resultado", f"Em um turno de 8 horas serão produzidas {total} peças.")

# janela = tk.Tk()
# janela.title("Revisão Tkinter - Exercícios")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_pecas = tk.Label(janela, text="Peças produzidas em 1 hora:", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_pecas.grid(row=4, column=0, pady=10, padx=10)

# ent_pecas = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_pecas.grid(row=4, column=1, pady=10, padx=10)

# btn_calcular = tk.Button(janela, text="Calcular Produção", font=("Arial", 14), fg="green", command=calcular_producao)
# btn_calcular.grid(row=5, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=7, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 3: Conversor de Unidades

# import tkinter as tk
# from tkinter import messagebox, ttk

# def converter_pressao():
#     bar = ent_bar.get()

#     if bar == "":
#         messagebox.showwarning("Aviso", "Digite a pressão em Bar")
#     else:
#         psi = float(bar) * 14.5
#         messagebox.showinfo("Resultado", f"A pressão é de {psi:.2f} PSI")

# janela = tk.Tk()
# janela.title("Conversor de Pressão")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_bar = tk.Label(janela, text="Digite a pressão em Bar:", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_bar.grid(row=0, column=0, pady=10, padx=10)

# ent_bar = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_bar.grid(row=0, column=1, pady=10, padx=10)

# btn_converter = tk.Button(janela, text="Converter", font=("Arial", 14), fg="green", command=converter_pressao)
# btn_converter.grid(row=1, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=2, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 4: Média de Qualidade

# import tkinter as tk
# from tkinter import messagebox, ttk

# def calcular_media():
#     nota1 = ent_nota1.get()
#     nota2 = ent_nota2.get()
#     nota3 = ent_nota3.get()

#     if nota1 == "" and nota2 == "" and nota3 == "":
#         messagebox.showwarning("Aviso", "Digite as 3 notas de inspeção")
#     else:
#         n1 = float(nota1)
#         n2 = float(nota2)
#         n3 = float(nota3)
#         media = (n1 + n2 + n3) / 3
        
#         messagebox.showinfo("Média de Qualidade", f"A média das notas de inspeção é: {media:.2f}")

# janela = tk.Tk()
# janela.title("Média de Qualidade")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_nota1 = tk.Label(janela, text="Digite a Nota 1 (0 a 10):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_nota1.grid(row=0, column=0, pady=10, padx=10)

# ent_nota1 = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_nota1.grid(row=0, column=1, pady=10, padx=10)

# lbl_nota2 = tk.Label(janela, text="Digite a Nota 2 (0 a 10):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_nota2.grid(row=1, column=0, pady=10, padx=10)

# ent_nota2 = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_nota2.grid(row=1, column=1, pady=10, padx=10)

# lbl_nota3 = tk.Label(janela, text="Digite a Nota 3 (0 a 10):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_nota3.grid(row=2, column=0, pady=10, padx=10)

# ent_nota3 = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_nota3.grid(row=2, column=1, pady=10, padx=10)

# btn_calcular = tk.Button(janela, text="Calcular Média", font=("Arial", 14), fg="green", command=calcular_media)
# btn_calcular.grid(row=3, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=4, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 5: Termostato Inteligente

# import tkinter as tk
# from tkinter import messagebox, ttk

# def verificar_temperatura():
#     temperatura_texto = ent_temp.get()

#     if temperatura_texto == "":
#         messagebox.showwarning("Aviso", "Digite a temperatura do motor")
#     else:
#         temp = float(temperatura_texto)
        
#         if temp < 40:
#             status = "Baixa carga"
#             messagebox.showinfo("Status do Motor", f"Status: {status}")
#         elif temp <= 70:
#             status = "Normal"
#             messagebox.showinfo("Status do Motor", f"Status: {status}")
#         else:
#             status = "ALERTA: Resfriamento Ativado!"
#             messagebox.showwarning("ALERTA", f"{status}")

# janela = tk.Tk()
# janela.title("Termostato Inteligente")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_temp = tk.Label(janela, text="Temperatura do motor (°C):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_temp.grid(row=0, column=0, pady=10, padx=10)

# ent_temp = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_temp.grid(row=0, column=1, pady=10, padx=10)

# btn_verificar = tk.Button(janela, text="Verificar", font=("Arial", 14), fg="green", command=verificar_temperatura)
# btn_verificar.grid(row=1, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=2, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 6: Classificador de Lotes

# import tkinter as tk
# from tkinter import messagebox, ttk

# def classificar_lote():
#     codigo = ent_codigo.get().upper()

#     if codigo == "":
#         messagebox.showwarning("Aviso", "Digite o código do produto")
#     else:
#         if codigo.startswith("A"):
#             categoria = "Alimentos"
#             messagebox.showinfo("Classificação", f"Categoria: {categoria}")
#         elif codigo.startswith("E"):
#             categoria = "Eletrônicos"
#             messagebox.showinfo("Classificação", f"Categoria: {categoria}")
#         else:
#             categoria = "Desconhecido"
#             messagebox.showinfo("Classificação", f"Categoria: {categoria}")

# janela = tk.Tk()
# janela.title("Classificador de Lotes")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_codigo = tk.Label(janela, text="Digite o código do produto:", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_codigo.grid(row=0, column=0, pady=10, padx=10)

# ent_codigo = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_codigo.grid(row=0, column=1, pady=10, padx=10)

# btn_classificar = tk.Button(janela, text="Classificar", font=("Arial", 14), fg="green", command=classificar_lote)
# btn_classificar.grid(row=1, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=2, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 7: Segurança de Operação

# import tkinter as tk
# from tkinter import messagebox, ttk

# def verificar_seguranca():
#     sensor_porta = ent_porta.get()
#     botao_emergencia = ent_emergencia.get()

#     if sensor_porta == "" and botao_emergencia == "":
#         messagebox.showwarning("Aviso", "Preencha os dois campos de segurança")
#     else:
#         if sensor_porta == "fechada" and botao_emergencia == "desligado":
#             messagebox.showinfo("Status", "Segurança OK. A máquina pode iniciar!")
#         else:
#             messagebox.showwarning("Bloqueado", "ATENÇÃO: Máquina não pode iniciar por motivos de segurança!")

# janela = tk.Tk()
# janela.title("Segurança de Operação")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_porta = tk.Label(janela, text="Sensor da Porta (aberta/fechada):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_porta.grid(row=0, column=0, pady=10, padx=10)

# ent_porta = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_porta.grid(row=0, column=1, pady=10, padx=10)

# lbl_emergencia = tk.Label(janela, text="Botão Emergência (ligado/desligado):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_emergencia.grid(row=1, column=0, pady=10, padx=10)

# ent_emergencia = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_emergencia.grid(row=1, column=1, pady=10, padx=10)

# btn_verificar = tk.Button(janela, text="Verificar Sistema", font=("Arial", 14), fg="green", command=verificar_seguranca)
# btn_verificar.grid(row=2, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=3, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 8: Cálculo de Descarte

# import tkinter as tk
# from tkinter import messagebox, ttk

# def calcular_descarte():
#     total_texto = ent_total.get()
#     defeito_texto = ent_defeito.get()

#     if total_texto == "" and defeito_texto == "":
#         messagebox.showwarning("Aviso", "Preencha o total de peças e as defeituosas")
#     else:
#         total = float(total_texto)
#         defeito = float(defeito_texto)
#         porcentagem_descarte = (defeito / total) * 100
#         if porcentagem_descarte > 5:
#             messagebox.showwarning("Resultado", f"Descarte de {porcentagem_descarte:.1f}%: Revisar Processo")
#         else:
#             messagebox.showinfo("Resultado", f"Descarte de {porcentagem_descarte:.1f}%: Processo Otimizado")

# janela = tk.Tk()
# janela.title("Cálculo de Descarte")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_total = tk.Label(janela, text="Total de peças produzidas:", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_total.grid(row=0, column=0, pady=10, padx=10)

# ent_total = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_total.grid(row=0, column=1, pady=10, padx=10)

# lbl_defeito = tk.Label(janela, text="Total de peças defeituosas:", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_defeito.grid(row=1, column=0, pady=10, padx=10)

# ent_defeito = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_defeito.grid(row=1, column=1, pady=10, padx=10)

# btn_calcular = tk.Button(janela, text="Calcular Descarte", font=("Arial", 14), fg="green", command=calcular_descarte)
# btn_calcular.grid(row=2, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=3, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 9: Validação de Medida

# import tkinter as tk
# from tkinter import messagebox, ttk

# def validar_medida():
#     medida_texto = ent_medida.get()

#     if medida_texto == "":
#         messagebox.showwarning("Aviso", "Digite a medida da peça")
#     else:
#         medida = float(medida_texto)
#         if medida < 9.8:
#             messagebox.showwarning("Resultado", f"Medida {medida}mm: Abaixo da tolerância!")
#         elif medida > 10.2:
#             messagebox.showwarning("Resultado", f"Medida {medida}mm: Acima da tolerância!")
#         else:
#             messagebox.showinfo("Resultado", f"Medida {medida}mm: Dentro da tolerância!")

# janela = tk.Tk()
# janela.title("Validação de Medida")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_medida = tk.Label(janela, text="Digite a medida da peça (mm):", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_medida.grid(row=0, column=0, pady=10, padx=10)

# ent_medida = tk.Entry(janela, font=("Arial", 14), width=30)
# ent_medida.grid(row=0, column=1, pady=10, padx=10)

# btn_validar = tk.Button(janela, text="Validar Peça", font=("Arial", 14), fg="green", command=validar_medida)
# btn_validar.grid(row=1, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=2, column=1, pady=10, padx=10)

# janela.mainloop()

# Exercício 10: Contagem Regressiva de Setup

# import tkinter as tk
# from tkinter import messagebox, ttk

# def iniciar_prensa():
#     for i in range(10, 0, -1):
#         messagebox.showinfo("Contagem Regressiva", f"Contagem Regressiva {i}")
#     messagebox.showinfo("Contagem Regressiva", "Prensa Ativada!")

# janela = tk.Tk()
# janela.title("Contagem Regressiva Setup")
# janela.geometry("700x700")
# janela.configure(bg="#3460B1")

# lbl_info = tk.Label(janela, text="Clique no botão para iniciar a contagem do Setup:", font=("Arial", 14), bg="#FFFFFF", fg="#000000")
# lbl_info.grid(row=0, column=0, pady=10, padx=10)

# btn_iniciar = tk.Button(janela, text="Iniciar Prensa", font=("Arial", 14), fg="green", command=iniciar_prensa)
# btn_iniciar.grid(row=0, column=1, pady=10, padx=10)

# bnt_fechar_janela = tk.Button(janela, text="Fechar", command=janela.destroy)
# bnt_fechar_janela.grid(row=1, column=1, pady=10, padx=10)

# janela.mainloop()