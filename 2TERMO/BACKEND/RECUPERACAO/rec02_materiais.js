const entrada = require("readline-sync")

const nome = entrada.question("Digite o nome da peça: ")
const qtd = entrada.questionInt("Digite a quantidade de peças: ")
const preco = entrada.questionFloat("Digite o preço da peça: ")

const total = qtd * preco

console.log(`nome da peça: ${nome}`)
console.log(`quantidade: ${qtd}`)
console.log(`preço ${preco}`)