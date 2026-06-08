import UIKit

//Function / функции / методы
//
//Создать 3 функции:
//1 - которая ничего не принимает и ничего не возвращает.
func nothing(){
    print("Пусто")
}

//2 - Принимает, но не возвращает.

func userName(name: String){
    print("Hello \(name)")
}
userName(name: "Anna")

//3 - И принимает и возвращает = и все три вызвать потом. Что делают функции, выбери сам(а)

func numbers(number1:Int, number2:Int) -> Int {
    return number1 + number2
}
var sum = numbers(number1: 100, number2: 345)

print(sum)


//Создать журнал для учителя, который будет принимать имя студента, профессию и оценку, затем будет записывать это все в массив. И внесите 10 студентов туда и распечатаете через цикл for

//Массив тюплов
var gradebook: [(String,String,Int)] = []

@MainActor func studentsData(nameStudent: String, profession: String, grade: Int){
    gradebook.append((name:nameStudent, profession: profession, grade: grade))
}

studentsData(nameStudent: "Елена", profession: "Политолог", grade: 100)
studentsData(nameStudent: "Кристина", profession: "Бизнес Аналитик", grade: 100)
studentsData(nameStudent: "Елена", profession: "Врач-стоматолог", grade: 100)
studentsData(nameStudent: "Елизавета", profession: "Логопед", grade: 100)
studentsData(nameStudent: "Евгения", profession: "Менеджер", grade: 100)
studentsData(nameStudent: "Алексей", profession: "Менеджер", grade: 100)
studentsData(nameStudent: "Анастасия", profession: "Программист", grade: 100)
studentsData(nameStudent: "Габриелла", profession: "СММ", grade: 100)
studentsData(nameStudent: "Алина", profession: "Экономист", grade: 100)
studentsData(nameStudent: "Роман", profession: "Врач-стоматолог", grade: 100)
studentsData(nameStudent: "Татьяна", profession: "Геодезист", grade: 100)

for students in gradebook{
    print(students)
}



//Создать функцию которая принимает имя и фамилию, и возвращает имя + фамилию в одной строке, потом пройтись по массиву с именем и фамилией и распечатать скрепленные имен и фамилия вместе в консоль

//var nameSurname = [String]()
//
//@MainActor func userInfo(name: String, surname: String) -> String {
//    nameSurname.append(name)
//    nameSurname.append(surname)
//    return name + " " + surname
//    
//}
//
//print(userInfo(name: "Эмили", surname: "Блант"),
//      userInfo(name: "Энн", surname: "Хэтэуэй"),
//      userInfo(name: "Мерил", surname: "Стрип"))


let actors = [(name: "Эмили", surname: "Блант"),
              (name: "Энн", surname: "Хэтэуэй"),
              (name: "Мерил", surname: "Стрип")
]

func actorsInfo(name: String, surname: String) -> String {
    return name + " " + surname
}

for act in actors {
    print(actorsInfo(name: act.name, surname: act.surname))
}


//Создайте функцию которая принимает параметры и вычисляет площадь круга


func areaOfCircle(pi: Double, radius: Double) -> Double{
    let s = pi * pow(radius, 2)
    return s
}

let area = areaOfCircle(pi: 3.14, radius: 3)

print(area)


//Создайте Dictionary, с именем ученика(цы), где ключ name и score, а значение дата, когда человек получил такую оценку

// Создаем вложенный словарь: [name: [score: data]]
var gameRecords: [String: [Int: String]] = [:]

gameRecords["PixelQueen"] = [3120: "12.05.2026"]
gameRecords["NeonRider"] = [2740: "14.05.2026"]
gameRecords["ShadowWalker"] = [2450: "10.05.2026"]
gameRecords["CyberKnight"] = [1890: "13.05.2026"]


print(gameRecords)


/*
 func имяФункции(принимаемые параметры) -> Вовзащаемые параметры{
 ... тело функции
 }
 */
