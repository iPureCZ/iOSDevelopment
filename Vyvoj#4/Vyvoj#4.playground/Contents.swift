import UIKit

// Pole
let ints = [Int]()
//ints.append(0) //Nemohu do pole nic pridat, pole ints je definovano jako konstanta
var mutableInts: [Int] = [] // jiny zpusob vytvoreni pole
mutableInts.append(0) //na konec pole pridam 0
mutableInts.append(2)
print(mutableInts)

mutableInts.insert(1, at: 0) // na index 0 vlozim hodnotu 1
print(mutableInts)

//mutableInts.insert(5, at: 6) // musim si davat pozor, abych nevkladal na pozici, ktera jeste v poli neni, aplikace spadne

let numbers = Array(1...100) //pole naplnim cisly od 1 do 100 vcetne
print(numbers)

var randomNumber = [5, 4, 6, 8, 3, 6] //pole nahodnych cisel
print(randomNumber)
randomNumber.sort() //jednoduche razeni vzestupne
print(randomNumber)

randomNumber.sort(by: { $0 > $1 }) //definice vlastniho klice pro razeni
/* znaky $0 a $1 znaci dve vedle sebe sousedici cisla z pole. Funkce je automaticky priradi a cisla pak musi splnovat podminku, ze leve ($0) musi byt vetsi nez prave ($1)*/
print(randomNumber)

//Seznamy
var czechDictionary: [String: String] = ["ahoj": "hello"]
print(czechDictionary) // vytiskne cely seznam
print(czechDictionary["ahoj"]) // vytiskne hodnotu, ktera je prirazena klici "ahoj"
czechDictionary["nashledanou"] = "goodbye" // pro neexistujici klic priradime novou hodnotu
print(czechDictionary["nashledanou"])


// Mnoziny
var uniqueNumbers: Set = [3, 3, 3, 4, 4, 4] //u mnozim nesmime zapomenout na "...: Set ="
print(uniqueNumbers)

let a: Set = [1, 1, 2, 3, 5, 8]
let b: Set = [3, 1, 4, 1, 5]

print(a.union(b)) // sjednoceni dvou mnozin (vysledek jsou cisla, ktera jsou v obou mnozinach)
print(a.intersection(b)) //prunik dvou mnozin (vysledek jsou cisla, ktera jsou v obou mnozinach zaroven)
print(a.symmetricDifference(b)) // symetrie dvou mnozin (vysledek jsou cisla, ktera jsou v jedne nebo druhe mnozine, ale ne v obou zaroven)
print(a.subtracting(b)) //odecitani dvou mnozin (vysledek jsou cisla, ktera jsou v prvni mnozine (a) a nejsou v druhe mnozine (b)

//Optional
//vsimnete si, ze u czechDictionary["ahoj"] sviti zluty warning. My si totiz nejsme jisty, jestli pod danym klicem neco je. Nic tam take byt nemusi.
//podobne u pole ->
print(randomNumber.first) //vytiskne prvni hodnotu z pole

print(ints.first) //snazi se vytisknou prvni hodnotu, ale pole ints je prazdne, tedy prvni hodnota neexistuje -> do konzole se vytiskne nil
