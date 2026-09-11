const entrada = require ('readline-sync');

console.log("------------------------------");
console.log("   COMPRA DE MATERIA-PRIMA   ");
console.log("------------------------------");

const nome = entrada.question("Qual o nome do material?: ");
const quantidade = entrada.questionInt("Quantidade desejada: ");
const valor = entrada.questionFloat("Valor Unitario: ");

const total = quantidade * valor 

console.log("\n------------------------------");
console.log(`Material ${nome}`);
console.log(`Quantidade desejada: ${quantidade}`);
console.log(`Valor Unitario: R$ ${valor.toFixed(2)}`);

console.log(`Valor total: R$ ${total.toFixed(2)}`);
console.log("------------------------------")