import UIKit

//Создать 5 констант строчного типа, которые содержат цифры и посчитайте их сумму, используя новые инструменты.

let numberOne: String = "5"
let numberTwo: String = "6"
let numberThree: String = "7"
let numberFour: String = "9"
let numberFive: String = "4"
// небезопасныйй метод распаковки
let sumNumbers = Int(numberOne)! + Int(numberTwo)! + Int(numberThree)! + Int(numberFour)! + Int(numberFive)!

print(sumNumbers)

var sum = 0
// безопасный метод распаковки
if let numberOne = Int(numberOne),
    let numberTwo = Int(numberTwo),
    let numberThree = Int(numberThree),
    let numberFour = Int(numberFour),
    let numberFive = Int(numberFive) {
        sum = numberOne + numberTwo + numberThree + numberFour + numberFive
    } else {
        print("Значения не получены")
    }

print(sum)

//Создать 5 констант со значением nil

let const1: String? = nil
let const2: Int? = nil
let const3: Double? = nil
let const4: Bool? = nil
let const5: Float? = nil


//Создать 5 опциональных типов констант, а затем установить им значения

//1
let greeting: String? = "Привет"
let date: String? = "04.05.2026"
let time: String? = "21:57"
let coin: Double? = 75.47
let currencySign: Character? = "$"

//Вариант 1 - распокавать каждую константу
//if let unwrappedGreeting = greeting{
//    print(unwrapperGreeting)
//} else {
//    print("")
//}

//Вариант 2-ой - распоковать сразу несколько констант
if let unwrappedGreeting = greeting,
    let unwrappedDate = date,
    let unwrappedTime = time,
    let unwrappedCoin = coin,
    let unwrappedCurrencySign = currencySign {
        print(("\(unwrappedGreeting) на \(unwrappedDate) время \(unwrappedTime) курс \(unwrappedCurrencySign) составляет \(unwrappedCoin)"))
    } else {
        print("Значения не получены")
    }


//Создать переменную строчную, в которую записать свое имя, а затем распечатать ее по буквам

var name = "Elena"

for char in name {
    print(char)
}

//Создать массив с целочисленными цифрами в хаотичном порядке. Распечатать в упорядоченном порядке эти цифры

var numbers = [2, 4, 5, 1, 7, 6, 8, 9, 0]

for number in numbers.sorted(){
    print(number)
}
