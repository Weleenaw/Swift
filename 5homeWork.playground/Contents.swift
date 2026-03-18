import UIKit

//Dictionary / Словари - хранит все значения парами ("key": value)
//Методы:
//sorted()    Сортирует элементы словаря.
//shuffled()    Меняет порядок элементов словаря.
//сontains()    Проверяет наличие указанного элемента в словаре.
//randomElement()    Возвращает случайный элемент из словаря.
//firstIndex()    Возвращает индекс указанного элемента из словаря.

//Создать 10 разных Dictionary с разными типами данных

let exchangeRate = [
    "AUD": 57.9433,
    "AZN": 48.1825,
    "BYN": 27.6771,
    "EUR": 93.1557,
    "USD": 81.9103
]

let countryDialingCode = [
    "RU": +7,
    "USA": +1,
    "BYN": +375,
    "UK": +44
]

//пустой словарь
let anything = [String: Any]()

let subAndUnsubUsers = [
    "user1": true,
    "user2": false,
    "user3": true
]

let airportsMoscow = [
    "SVO": "Sheremetyevo",
    "VKO": "Vnukovo",
    "DME": "Domodedovo",
    "ZIA": "Zhukovsky"
]

//массив внутри словаря, [Key: [Value]]
let useful = [
    "fruits": ["apple", "banan", "cherry", "kivi"],
    "vegetable": ["cucumber", "tomato", ]
]


//Создать 2 Dictionary, в одном должны быть все месяца на русском, в другом на английском. Чтобы к словарю можно было так обращаться dict1[1] // Январь
let monthRu = [
    1: "Январь",
    2: "Февраль",
    3: "Март",
    4: "Апрель",
    5: "Май",
    6: "Июнь",
    7: "Июль",
    8: "Август",
    9: "Сентбрь",
    10: "Октябрь",
    11: "Ноябрь",
    12: "Декабрь"
]

print(monthRu[1])

let monthEn = [
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December"
]
print(monthEn[1])

//Собрать все ключи и значения каждого Dictionary и распечатайте в консоль

for monthRus in monthRu{
    print(monthRus.key, monthRus.value)
}

for monthEng in monthEn {
    print(monthEng.key, monthEng.value)
}

//Создать пустой Dictionary и через условный оператор if проверьте пустой он или нет, если пустой то добавить в него пару любых значений

var emptyDict: [String: String] = [:]

if emptyDict.isEmpty {
    emptyDict["Не пустой"] = "да"
    print(emptyDict)
} 

