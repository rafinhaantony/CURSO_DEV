# Anotações de Aula: Sistemas Operacionais

## 1. Introdução aos Sistemas Operacionais (SO)
* **Definição:** Intermediário entre o hardware do computador e os aplicativos do usuário.
* **Gerenciamento:** Controla a CPU, memória, dispositivos de entrada/saída e armazenamento.
* **Modo Kernel:** Nível de privilégio máximo com acesso direto ao hardware do sistema.
* **Modo Usuário:** Nível restrito onde rodam os aplicativos para isolar falhas.

## 2. Máquinas Virtuais (VMs)
* **Conceito:** Emulação de um sistema de computação completo dentro de outro hardware.
* **Hipervisor Tipo 1:** Roda direto no hardware físico (Ex: VMware ESXi, Proxmox).
* **Hipervisor Tipo 2:** Roda sobre um sistema operacional existente (Ex: VirtualBox, VMware Workstation).
* **Vantagens:** Isolamento de ambientes, testes seguros, otimização de servidores físicos.

## 3. O Prompt de Comando (CLI)
* **Conceito:** Interface de Linha de Comando para executar instruções diretas no SO.

### Comandos Essenciais (Windows - CMD/PowerShell)
* `dir` ➔ Lista os arquivos e pastas do diretório atual.
* `cd <nome_da_pasta>` ➔ Entra em uma pasta específica.
* `cd ..` ➔ Volta para a pasta anterior.
* `mkdir <nome>` ➔ Cria uma nova pasta no diretório.
* `cls` ➔ Limpa a tela do terminal.
* `ipconfig` ➔ Exibe as configurações de rede e IP.

### Comandos Essenciais (Linux / macOS)
* `ls` ➔ Lista os arquivos e pastas do diretório atual.
* `cd <nome_da_pasta>` ➔ Entra em uma pasta específica.
* `pwd` ➔ Mostra o caminho completo do diretório atual.
* `mkdir <nome>` ➔ Cria uma nova pasta no diretório.
* `clear` ➔ Limpa a tela do terminal.
* `ifconfig` ou `ip a` ➔ Exibe as configurações de rede e IP.

## 4. Gerenciamento de Processos
* **Processo:** Um programa em execução na memória RAM do computador.
* **Threads:** Subdivisões de um processo que executam tarefas em paralelo.
* **Escalonamento:** Algoritmo do SO que decide qual processo usa a CPU.
* **Deadlock:** Situação onde dois processos travam esperando recursos um do outro.

## 5. Gerenciamento de Memória
* **Memória RAM:** Espaço volátil de alta velocidade para dados em execução.
* **Memória Virtual:** Uso do disco rígido como extensão da memória RAM.
* **Paginamento:** Divisão da memória em blocos fixos chamados páginas.
* **Fragmentação:** Desperdício de espaço livre na memória RAM com o tempo.
