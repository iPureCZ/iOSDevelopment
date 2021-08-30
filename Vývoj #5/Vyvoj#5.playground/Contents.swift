let condition = true

// Zakladni syntax pro podminku
if condition == true {
    print("Podminka splnen")
}

if condition { // u if nemusim explicitne psat "== true"
    print("I takhle je podminka splnena")
}

if !condition { // ! neguje dany vyraz, podminka se da prelozit jako "pokud neplati condition"
    print("Toto se vypise, pokud je condition == false")
} else {
    print("Condition plati")
}

if condition {
    let scopeConstant = "Hello scope world"
    print(scopeConstant)
    //a tady promenna scopeConstant zanika, dal v kodu uz neexistuje
}

let globalConstant = "Hello global constant"
if condition {
    print(globalConstant)
}
print(globalConstant) //globaConstant se definovala mimo scope podminky, mohu s ni tedy nadale pracovat a zanikne az na konci

let arr = Array(1...10) //pole cisel od 1 do 10
if arr.count == 0 { //Nejprve se vyhodnoti tato podminka...
    print("Pole arr je prazdne")
} else if arr.count < 10 {// ... pak prijde na radu tato podminka...
    print("Pole arr ma mene jak 10 prvku")
} else { //...a nakonec vse ostatni
    print("Pole arr ma 10 a vice prvku")
}

// Retezeni podminek

// && logicke ano, musi byt splneny obe casti podminky
if arr.count >= 10 && arr.contains(5) { //funkce contains vrati true/false pokud pole obsahuje dany prvek
    print("Pole arr ma 10 a vice prvku a zaroven obsahuje cislo 5")
}

// || logicke nebo, alespon jedna z podminek musi byt splnena
if arr.isEmpty || arr.contains(5) {
    print("Pole arr je bud prazdne nebo obsahuje cislo 5")
}


// Cykly
arr.forEach { value in //value si mohu pojmenovat jak chci
    print(value)
}

arr.forEach { print($0) } // zkraceny zapis predchoziho cyklu

for index in 0..<arr.count { //index si mohu pojmenovat jak chci
    print(index)
    print(arr[index])
    
    // u tohoto typu cyklu je potreba davat pozor na ohranicujici podminku. Tim, ze prochazim pole od 0 do poctu prvku, mam jistotu, ze nepristoupim na element, ktery neni v poli
    // arr[20] by shodilo aplikaci, protoze pole nema 20 prvku a tedy neexistuje pole na indexu 20
}

for value in arr {
    print(value)
}
