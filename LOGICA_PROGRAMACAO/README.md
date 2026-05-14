# Curso: Lógica de Programação com Python & Git

Este repositório contém o cronograma, conceitos e exercícios das aulas de Lógica de Programação, utilizando a linguagem Python e controle de versão com Git/GitHub.

---

## Cronograma do Curso

### Módulo 1: Git e GitHub (Base de Tudo)
- [ ] **Aula 1**: Configuração de ambiente e conceitos de versionamento.
- [ ] **Aula 2**: Comandos essenciais do Git (`status`, `add`, `commit`, `log`).
- [ ] **Aula 3**: Conectando ao GitHub (`remote`, `push`, `pull`, `clone`).

### Módulo 2: Lógica & Sintaxe Básica em Python
- [ ] **Aula 4**: Variáveis, tipos de dados (`str`, `int`, `float`, `bool`) e entrada/saída.
- [ ] **Aula 5**: Operadores aritméticos e expressões lógicas.
- [ ] **Aula 6**: Estruturas condicionais (`if`, `elif`, `else`).

### Módulo 3: Estruturas de Repetição e Coleções
- [ ] **Aula 7**: Laços de repetição (`while` e `for`).
- [ ] **Aula 8**: Listas e Tuplas (Manipulação de dados sequenciais).
- [ ] **Aula 9**: Dicionários e Conjuntos (Estruturas de chave-valor).

### Módulo 4: Modularização e Boas Práticas
- [ ] **Aula 10**: Funções (`def`, parâmetros e retornos).
- [ ] **Aula 11**: Tratamento de erros e exceções (`try`, `except`).
- [ ] **Aula 12**: Projeto Final e Code Review via GitHub.

---

## Guia Rápido de Comandos Git

Use estes comandos no terminal para salvar o progresso das suas aulas:

```bash
# Iniciar um repositório local
git init

# Verificar o status dos arquivos
git status

# Adicionar todas as modificações para o envio
git add .

# Salvar as alterações com uma mensagem descritiva
git commit -m "Doc: Adiciona anotações da aula X"

# Enviar o código para o GitHub (substitua 'main' se necessário)
git push origin main
```

---

## Exemplo de Código Python (Aula 06)

Um exemplo prático de lógica condicional aplicada:

```python
# Verificador de maioridade e permissão de voto
idade = int(input("Digite a sua idade: "))

if idade >= 18:
    print("Você é maior de idade e o voto é obrigatório.")
elif idade >= 16:
    print("Você já pode votar, mas o voto é opcional.")
else:
    print("Você é menor de idade e não pode votar.")
```

---

## 📝 Links Úteis e Ferramentas

- [Download do Python](https://python.org)
- [Download do Git](https://git-scm.com)
- [Documentação Oficial do Python](https://python.org)
- [Cheat Sheet de Markdown](https://markdownguide.org)
