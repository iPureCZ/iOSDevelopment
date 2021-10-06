import UIKit

// definice tridy
class FirstClass {
    let number: Int // definice property tridy
    
    init(number: Int) { // oproti struct musime sami definovat funkci init a nastavit vychozi hodnoty pro vsechny property
        self.number = number // dulezite slovo self -> odkazuje na konkretni instanci dane tridy
    }
}

// ============================================
// rozdil mezi struct a class

// denice tridy a struktury
class NumberClass {
    var number: Int = 0 // misto init mohu nastavit hodnotu primo
}

struct NumberStruct {
    var number: Int = 0
}

// definice funkci, ktere zvysi property number o 1
func increase(number: NumberClass) {
    number.number += 1
}

func increase(number: NumberStruct) {
    var number = number
    number.number += 1
}

let numberClass = NumberClass()
let numberStruct = NumberStruct()

print(numberClass.number) // vypise se hodnota 0
print(numberStruct.number) // vypise se hodnota 0

increase(number: numberClass)
increase(number: numberStruct)

print(numberClass.number) // vypise se hodnota 1
print(numberStruct.number) // vypise se hodnota 0

increase(number: numberClass)
increase(number: numberStruct)

print(numberClass.number) // vypise se hodnota 2
print(numberStruct.number) // vypise se hodnota 0
