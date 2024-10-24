import Foundation

print("Digite uma palavra para gerar anagramas:")
let palavra = readLine()

var letras = Array(palavra)
var anagramas: Set<String> = []

for i in 0..<letras.count {
    for j in i+1..<letras.count {
        var novaPalavra = letras
        let letraAtual = novaPalavra[i]
        novaPalavra[i] = novaPalavra[j]
        novaPalavra[j] = letraAtual
        anagramas.insert(String(novaPalavra))
    }
}

print("Anagramas gerados:")
for anagrama in anagramas {
    print(anagrama)
}
