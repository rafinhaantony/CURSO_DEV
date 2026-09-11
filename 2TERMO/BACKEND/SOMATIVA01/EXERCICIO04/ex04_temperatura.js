const entrada = require('readline-sync');

const temperatura = entrada.questionInt("Qual a temperatura da maquina?: ");

if (temperatura <=60) {
    console.log("NORMAL!");
} else if (temperatura >61 && temperatura <= 80) {
    console.log("ATENCAO!");
} else {
    console.log("CRITICA!")
}
console.log( temperatura, "°C")