import Foundation

print("Digite um texto para análise:")
let text = readLine() ?? ""

// Transforma o texto em um array de palavras atribuído à variável 'let'
let words = text.split(separator: " ").map { String($0) }

// Mostra no console o número de palavras
print("Número de palavras: \(words.count)")

// Busca uma palavra específica e diz quantas vezes ela aparece na frase
print("Digite a palavra que deseja buscar:")
let searchWord = readLine() ?? ""
var searchCount = 0
for word in words {
    if word == searchWord {
        searchCount += 1
    }
}
print("A palavra '\(searchWord)' aparece \(searchCount) vezes.")
