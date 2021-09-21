import Foundation

// Zakladni definice struktury
struct Block {
    let widht: Int
    let height: Int
}

let myBlock = Block(widht: 2, height: 4) //vytvoreni instance struktury Block
print(myBlock.widht)

struct Person {
    let name, surname: String //pokud mam vic properties stejneho datoveho typu, mohu je definovat na jedne radce
    
    func printFullName() {
        print(name + " " + surname)
    }
}

let timCook = Person(name: "Tim", surname: "Cook")
timCook.printFullName()

struct ListOfPeople {
    var people: [Person] = [] // property people jsem priradil zakladni hodnotu (prazdne pole), pri inicializaci se uz neukaze jako moznost
    
    mutating func add(newPerson person: Person) { //klicove slovo mutating znaci, ze dana funkce meni obsah struktury (v nasem pripade property people dostane novou polozku)
        people.append(person)
    }
    
    mutating func remove(person: Person) {
        let indexOfPerson = people.firstIndex(where: { $0.name == person.name && $0.surname == person.surname }) //nejprve musime najit index polozky, kde je ulozen nas clovek
        // muze se stat, ze property people neobsahuje naseho cloveka, tim padem bude indexOfPerson nil (indexOfPerson je datoveho typu Optional(Array<Person>.Index), coz je „trochu slozitejsi Int“
        
        if let indexOfPerson = indexOfPerson { //konstrukce if let slouzi ke zjisteni, jestli puvodni promenna obsahuje hodnotu nebo ne
            people.remove(at: indexOfPerson)
        }
    }
    
    func printList() { //nic nemenim, neni treba mit klicove slovo mutating
        people.forEach { print($0.printFullName()) }
    }
}

var list = ListOfPeople() //property people uz ma definovanou zakladni hodnotu
list.add(newPerson: timCook)

list.printList()

let steveJobs = Person(name: "Steve", surname: "Jobs")
list.remove(person: steveJobs)
list.printList()

list.add(newPerson: steveJobs)
list.printList()
