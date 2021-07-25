// TODO dodat odkaz na clanek

// Uvod do promennych

let helloWorld = "Hello World" // konstanta, kterou uz nemohu zmenit

var hello = "Hello World" // promenna, kterou mohu zmenit
print(hello) // prikaz print vytiskne obsah promenne do konzole

hello = "Hello World #2" // zmenil jsem hodnotu promenne hello
print(hello)

let anotherHelloWorld: String = "Another Hello World" // rucne jsem definoval datovy typ String, bez neho si to Swift odvodi sam

// Nyni ukazka chyby
hello = 0 //nemuzu priradit do promenne typu String nic jineho nez String. Je to chyba a kod se nyni nezvladne prelozit


// Dalsi datove typy
let num = 42 // datovy typ Int - cele cislo

let doubleNum = 42.2 // datovy typ Double - desetinne cislo s presnosti na 15 mist

// Existuje jeste jeden datovy typ reprezentujici desetinne cislo, s presnosti na 6 mist, a jmenuje se Float. Swift si bez pripadne deklarace sam defaultne zvoli Double. (viz priklad doubleNum)

let floatNum: Float = 42.2 // sam jsem musil urcit, ze se jedna o datovy typ Float

// Ukazka komentaru
/* Ke kodu si muzete prikladat ruzne komentare, ktere vysvetli, co ma kod delat. V komentari se mohou objevovat jakekoliv chyby, prekladac je bude VZDY ignorovat. Existuji dva zakladni druhy komentaru.*/

// (1) Jednoradkovy komentar.
// Vse co se nachazi za // se povazuje za komentar. Tedy za tento komentar uz nemohu pridat zadny funkcni kod

// (2) Uzavrene komentare /* */
/* Uzavrene komentare muzete vkladat kamkoliv, i doprostred kodu a cokoliv co je za nim, uz je povazovano za funkcni kod.  */
// Ukazka

let example: String /* ukazka komentare */ = "Example"
