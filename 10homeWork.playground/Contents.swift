import UIKit

//closure (Замыкание) — это действие без имени, которое можно положить в переменную или передать в другое место.

/* Шаблон
let name = { (parameters) -> ReturnType in

    код

}
 
 filter — кого оставить? filter оставляет или убирает элементы
 map — во что превратить каждый элемент? map изменяет каждый элемент.
*/


// Создай замыкание square, которое принимает число и возвращает его квадрат

let square = { (number: Int) -> Int in
    return number * number
}

let result = square(3)

print(result)

// Создай массив чисел и через filter оставь только числа больше 10

let intengers = [11, 22, 2, 3, 12, 4, 77]

let intengersNumber = intengers.filter { intengers in
    return intengers > 10
}

print(intengersNumber)

// Создай массив имён и через filter оставь только имена длиннее 5 букв

let userName = ["Екатерина", "Анна", "Елена"]

let longNames = userName.filter { userName in
    return userName.count > 5
}

print(longNames)

// Создай массив чисел и через map умножь каждое число на 2.

let number = [1, 2, 3, 4, 5]

let countNumber = number.map { number in
    return number * 2
}
print(countNumber)


//Написать сортировку массива с помощью замыкания, сначала по возрастанию, затем по убыванию. Вывести всё в консоль.


let years = [2021, 2020, 2023, 2024, 2022, 2025, 2026]

let ascendingYears = years.sorted { (firstYear, lastYear) in
    return firstYear < lastYear
}

let descendingYears = years.sorted{ (firstYear, lastYear) in
    return firstYear > lastYear
}

print(ascendingYears)
print(descendingYears)

//Создать метод который запрашивает имена друзей, после этого имена ложит в массив, сортирует этот массив по количеству букв в имени и возвращает результат - отсортированный массив

//sorted- создаёт новый отсортированный массив, но старый не меняет
//sort - сортирует сам исходный массив

var friendNames = [String]()

@MainActor func addFriendName(name: String) -> [String] {
    friendNames.append(name)
    friendNames.sort {firstName, secondName in
        return firstName.count < secondName.count
    }
    return friendNames
}

addFriendName(name: "Аманда")
addFriendName(name: "Энн")

print(friendNames)

//Написать функцию, которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами

let capitals = ["France": "Paris", 
                "Italy": "Rome",
                "Spain": "Madrid",
                "Norway": "Oslo",
                "Sweden": "Stockholm",
                "Portugal": "Lisbon"]


func findCapital (country: String){
    if let capital = capitals[country]{ // Пробуем найти значение в словаре по ключу country
        print("Ключ : \(country)") // Печатаем ключ, который передали в функцию
        print("Значение : \(capital)") // Печатаем найденное значение из словаря
    }  else { // Если такого ключа нет в словаре
        print("Такой страны в списке нет")
    }
}

findCapital(country: "Italy")


//Написать функцию, которая принимает пустые массивы(один - строковый, второй - числовой) и проверяет их: если пустой - то добавить значения (любые) и вывести в консоль


var emptyString = [String]()
var emptyInteger = [Int]()

@MainActor func addValueInArray (stringArray: inout [String], integerArray: inout [Int]) { // inout значит: функция может изменить этот массив
    if stringArray.isEmpty { // Проверяем, пустой ли строковый массив
        stringArray.append("Номер") // Добавляем строку в массив
        print(stringArray) // Печатаем строковый массив
    } else { // Если массив не пустой
        print("Массив строк не пустой") // Печатаем сообщение
    }
    if integerArray.isEmpty{
        integerArray.append(111)
        print(integerArray)
    } else {
        print("Здесь тоже не пусто ")
    }
}

addValueInArray(stringArray: &emptyString, integerArray: &emptyInteger)

