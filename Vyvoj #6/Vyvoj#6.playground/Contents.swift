import UIKit

// Reseni kvadraticky rovnic #1

// kvadraticka rovnice ve tvaru: ax^2 + bx + c = 0
let a = 1.0
let b = 1.0
let c = 1.0

//vypocet diskriminantu
let D = pow(b, 2) - 4 * a * c

//Reseni rovnice
if D < 0 {
    print("Neexistuje reseni v oboru realnych cisel")
} else if D == 0 {
    let x = -b / (2 * a)
    print("Rovnice ma jedno reseni x = \(x)")
} else { // D > 0
    let x1 = (-b + sqrt(D)) / (2 * a)
    let x2 = (-b - sqrt(D)) / (2 * a)
    
    print("Rovnice ma dve reseni, x1 = \(x1) a x2 = \(x2)")
}
// Konec reseni #1
// =====================================================

//Reseni kvadratickych rovnic #2
//Reseni pomoci funkce bez argumentu
// Kod uvnitr funkce je totozny, jako kod z reseni #1
// Dokud funkci nezavolam, tak se nevytiskne vysledek

// Je potreba ji volat az po jeji definici, na tomto radku jeste prekladac nevi, ze nejaka funkce quadratickEquationSolver1() existuje

func quadratickEquationSolver1() {
    let a = 1.0
    let b = 1.0
    let c = 1.0

    //vypocet diskriminantu
    let D = pow(b, 2) - 4 * a * c

    //Reseni rovnice
    if D < 0 {
        print("Neexistuje reseni v oboru realnych cisel")
    } else if D == 0 {
        let x = -b / (2 * a)
        print("Rovnice ma jedno reseni x = \(x)")
    } else { // D > 0
        let x1 = (-b + sqrt(D)) / (2 * a)
        let x2 = (-b - sqrt(D)) / (2 * a)
        
        print("Rovnice ma dve reseni, x1 = \(x1) a x2 = \(x2)")
    }
}

quadratickEquationSolver1() //volani funkce, funkce je uz definovana

// Reseni #2 je slouzi jako ukazka zbytecneho reseni. Funkce funguje pouze pro jednu konkretni rovnici. Funkce by mela fungovat pro vsechny rovnice.
// Konec reseni #2
// =======================================================

// Reseni kvadratickych rovnic #3
// Reseni pro vsechny rovnice, pomoci argumentu funkci

func quadratickEquationSolver2(a: Double, b: Double, c: Double) {
    //vypocet diskriminantu
    let D = pow(b, 2) - 4 * a * c

    //Reseni rovnice
    if D < 0 {
        print("Neexistuje reseni v oboru realnych cisel")
    } else if D == 0 {
        let x = -b / (2 * a)
        print("Rovnice ma jedno reseni x = \(x)")
    } else { // D > 0
        let x1 = (-b + sqrt(D)) / (2 * a)
        let x2 = (-b - sqrt(D)) / (2 * a)
        
        print("Rovnice ma dve reseni, x1 = \(x1) a x2 = \(x2)")
    }
}

quadratickEquationSolver2(a: 2, b: 5, c: 4)
quadratickEquationSolver2(a: 1, b: -10, c: 0)
quadratickEquationSolver2(a: 6, b: 2, c: 3)
// ... a dalsi a dalsi rovnice

// Konec reseni #3
// =========================================================

// BONUS
// rekurze
// Rekurze znamena, ze funkce vola sama sebe. Je potreba k tomu pristupovat opatrne a mit ukoncujici podminku, jinak pobezi volani do nekonecna
// Ukazka reseni faktorialu (https://cs.wikipedia.org/wiki/Faktoriál)

// -> Int znamena, ze funkce vraci integer (vice v dalsim dilu)

func factorial(a: Int) -> Int {
    // Osetreni vstupnich podminek
    // ----------------------------
    if a == 0 {
        print("Faktorial 0 == 1")
    } else if a < 0 {
        print("Zadej kladne cislo nebo 0")
    }
    // Konec osetreni vstupnich podminek
    // ----------------------------
    
    if a <= 1 { //ukoncovaci podminka - snizuju a do te doby, dokud neni rovno 1, pak ukoncim
        return a
    } else {
        return a * factorial(a: a - 1)
    }
    
    // zkracene mozne zapsat nasledovnce
    // pomoci terciarniho operatoru
//    return a == 1 ? a : a * factorial(a: a - 1)
}

print(factorial(a: 3))


// Ukazka zanoreni pro a == 3
// factorial(a: 3)
// --> vykona se return 3 * factorial(a: 3 - 1)
// -----> vykona se return 2 * factorial(a: 2 - 1)
// -------> vykona se return 1 // splnena ukoncovaci podminka
// -----> volani factorial(a: 2 - 1) == 1 a tim padem se automaticky dosadi return 2 * 1
// --> volani factorial(a: 3 - 1) == 2 a tim padem se automaticky dosadi return 3 * 2 a vrati se konecny vysledek
