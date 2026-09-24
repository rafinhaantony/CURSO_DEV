const entrada = require ('readline-sync')

const peso = entrada.questionFloat("Digite o peso da peca (g): ")

if (peso >= 95 && peso <= 105){
    console.log("PEÇA APROVADA!")
} else {
    console.log("PEÇA REPROVADA")
}
console.log("Peso informado:", peso, "g")