import UIKit

//Создать свои строки

let string1 = "Hello"
let string2  = " there"
print(string1 + string2)

let placeholder = "email or phone"

//Создать различные выражения с приведением типа

let sting3: Character = "!"
let string4 = string1 + string2 + String(sting3)
print(string4)

let email = "email@index.com "
let phone = 79009998888
let together = email + String(phone)
print(together)


let liters = 19
let drunk = 5.6
let howMuchIsleft = Double(liters) - drunk
print(howMuchIsleft)


//Поработать с циклом for in, как было в ютюб уроке

var numbers: [Int] = [1, 2, 12, 3, 4, 66, 6]
var tmp = 0
for number in numbers {
    if number > tmp {
        tmp = number
    }
}
print(tmp)

for char in "letter" {
    print(char)
}

for loop in 1...4 {
    print("five")
}


//1. Таблица умножения
//Выведи в консоль таблицу умножения на 7 (от 1 до 10).
//Результат должен быть в формате: "7 x 1 = 7" и так далее.

var massiv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for i in massiv {
    let seven = 7
    print("Число \(i) умножаем на \(seven) = \(i * seven)")
}


//2. Сумматор
//У тебя есть диапазон чисел от 1 до 5. Используя цикл, найди сумму всех чисел в этом диапазоне и выведи итоговый результат.

var sum = 0
for i in 1...5{
    sum = sum + i
    print(sum)
}

//3. Фильтр имен
//Дан массив имен: let users = ["Алексей", "Иван", "Анна", "Дмитрий", "Анастасия"].
//Выведи в консоль только те имена, которые начинаются на букву "А".

let mName = ["Алексей", "Иван", "Анна", "Дмитрий", "Анастасия"]
for name in mName where name.hasPrefix("А"){
    print(name)
}

//4. Обратный отсчет
//Напиши цикл, который выводит числа от 10 до 1, а в конце печатает фразу "Поехали!".
//Подсказка: используй метод .reversed() для диапазона.

var chislo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var end = "Поехали"
for chi in chislo.reversed() {
    print(chi)
}
print(end)

//5. Поиск четных
//Пройдись циклом по диапазону от 1 до 20 и выводи число только в том случае, если оно четное.
//Подсказка: используй оператор остатка от деления % 2 == 0 или метод .isMultiple(of: 2).


