import Foundation

func buyNewMacbook() { // Definice funkce
    print("Buy new Macbook") // tento kod se vykona az kdyz se zavola dana funkce
}

buyNewMacbook() // volani konkretni funkce -> vykona se jeji obsah

func greet(person: String, hometown: String) -> String { //definice funkce s parametry
    return "Hello \(person) from " + hometown
}

greet(person: "Tim Cook", hometown: "Cupertino") // volani funkce s parametry

func greet(person: String, from hometown: String) -> String { //definice funkce s argument labelem
    return "Hello \(person) from \(hometown)"
}

greet(person: "Tim Cook", from: "Cupertino") //funkce s argument labelem se lepe cte v kodu

// Tuple
let http404Error = (404, "Not Found") // definice zakladniho tuplu
http404Error.0 // pristup k prvnimu prvku tuplu

let betterHttp404Error = (statusCode: 404, description: "Not found") //lepsi definice tuplu s labelem
betterHttp404Error.description // volani tuplu s labelem je lepsi pro cteni

// Funkce nalezeni minima a maxima
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil // zadane pole je prazdne, neexistuje minimum a maximum
    }
    
    // Nastaveni zakladnich hodnot
    // Aktualni minimum i maximum je nastaveno na prvni prvek pole
    // V predchozim kroku jsme zjistili, ze pole ma alespon jeden prvek ( resp. pole neni prazdne)
    var currentMin = array[0]
    var currentMax = array[0]
    
    // nyni se bude prochazet pole prvek po prvku a bude se zjistovat, jestli dany prvek je mensi/vetsi nez aktualni minimum/maximum
    for value in array[1..<array.count] { //dalsi definice for cyklu
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax) // prosli jsme cele prve a vratime tupl s minimem a maximem
}

let arr = [0, 3, 6, 2, 10, -4, 5, 8]
print(minMax(array: arr))

let emptyArr: [Int] = []
print(minMax(array: emptyArr))
