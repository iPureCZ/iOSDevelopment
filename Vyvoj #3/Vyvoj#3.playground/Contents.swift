import UIKit

let a = 1
let b = 2

// Jednoducha aritmetika jako na zakladni skole
let c = a + b
//let c = a - b
//let c = a * b
let d = a / b
print(d) // vysledek bude 0, protoze delime dve cela cisla, tedy desetinna cast vysledku se usekne a zahodi

let decimalA = 1.0
let decimalB = 2.0

print(decimalA / decimalB) // vysledek bude 0.5, protoze delime dve desetinna cisla

let zero = 0
let otherNum = 5

print(zero / otherNum) // muzeme delit nulu, vysledkem bude vzdy nula
print(otherNum / zero) // NESMIME DELIT "celou" NULOU, v takovem pripade nam aplikace spadne

let decimalZero = 0.0
print(decimalA / decimalZero) // muzeme delit "desetinnou" nulou, v takovem pripade bude vysledek nekonecno

var increment = 0
print(increment) // vytiskne se 0
increment = increment + 1 // k hodnote promenne increment pridam jednicku
print(increment) // vytiskne se 1
increment += 1 // zkraceny zapis radky 29, casto pouzivany
print(increment) //vytiskne se 2

// Modulo
print(a % b) //zbytek po deleni

// Stringy
var helloWorld = "Hello World"
print(helloWorld.count) // vytiskne pocet znaku stringu
let count = helloWorld.count // ulozim si hodnotu poctu znaku do nove promenne

helloWorld += " Other hello world" // do stringu mohu pridavat dalsi casti textu
print(helloWorld.count)
print(count) // hodnota promenne count se nezmenila, v ni je ulozen pocet znaku pred zmenou

print("String \(helloWorld) mel nejprve \(count) znaku a nyni ma \(helloWorld.count) znaku.")

// Aritmeticke operace
print(a > b) //a je vetsi nez b
print(a >= b) // a je vetsi nebo rovno b
print(a < b) //a je mensi nez b
print(a <= b) // a je mensi nebo rovno b
print(a == b) // a rovna se b
print(a != b) //a se nerovna b
// vsechny tyto operace vraci hodnotu typu Bool (true nebo false)

