# Plano de Aula: Arquitetura IoT

## 1. Fundamentos do Arduino na IoT
* **Hardware:** Microcontrolador ATmega328P, pinos digitais/analógicos e barramentos de comunicação (I2C, SPI, UART).
* **Prototipagem:** Uso de protoboard, sensores (temperatura, presença, umidade) e atuadores (relés, motores, LEDs).
* **Alimentação:** Limites de tensão (5V/3.3V) e corrente por pino para evitar danos ao circuito.

## 2. Programação com C++ (Firmware)
* **Estrutura Base:** Funções obrigatórias `setup()` para inicialização e `loop()` para execução contínua.
* **Controle de GPIO:** Uso de `pinMode()`, `digitalWrite()`, `digitalRead()`, `analogWrite()` (PWM) e `analogRead()`.
* **Manipulação de Tempo:** Diferenças cruciais entre o uso de `delay()` (bloqueante) e `millis()` (não bloqueante).
* **Comunicação Serial:** Uso do `Serial.begin()` e `Serial.print()` para depuração de dados no monitor.

## 3. Integração com Python (Software e Dados)
* **Comunicação Serial:** Uso da biblioteca `pySerial` para ler os dados enviados pelo Arduino via USB.
* **Processamento:** Scripts em Python para tratar, filtrar e converter os dados brutos recebidos dos sensores.
* **Armazenamento:** Salvamento de logs em arquivos CSV ou bancos de dados locais (SQLite).
* **Interface e Dashboard:** Criação de gráficos em tempo real utilizando bibliotecas como `matplotlib` ou `Dash`.

## 4. Arquitetura de Comunicação (C++ $\leftrightarrow$ Python)
1. O **Arduino (C++)** lê os dados do sensor físico.
2. O **Arduino (C++)** formata e envia os dados via Serial (ex: `"TEMP:25.4"`).
3. O **Script Python** escuta a porta COM/TTY ativa.
4. O **Script Python** decodifica a string e toma uma ação (salva no banco ou envia para a nuvem).
