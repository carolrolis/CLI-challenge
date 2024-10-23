import Foundation

// Exemplo de entrada de texto
print("Digite um texto para análise:")
let text = readLine() ?? ""

// Transformar o texto em um array de palavras
let words = text.split(separator: " ").map { String($0) }

// Contar o número de palavras
print("Número de palavras: \(words.count)")

// Buscar uma palavra específica
print("Digite a palavra que deseja buscar:")
let searchWord = readLine() ?? ""
var searchCount = 0
for word in words {
    if word == searchWord {
        searchCount += 1
    }
}
print("A palavra '\(searchWord)' aparece \(searchCount) vezes.")