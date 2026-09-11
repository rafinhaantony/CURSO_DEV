console.log("------------------------------")
console.log("      PRODUCAO DO TURNO       ")
console.log("------------------------------")

const pecasPorHora = entrada.question("Quantas pecas: ");
const horasTurno = entrada.questionInt("Horas do Turno: ");

const producaoTotal = pecasPorHora * horasTurno

console.log("Produção por hora:", pecasPorHora, "peças")
console.log("Horas do turno:", horasTurno)
console.log("Total produzido:", producaoTotal, "peças")