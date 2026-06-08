import UIKit

//Class vs Struct
//
/*
 структура копируется (меняем копию)
 класс передаётся по ссылке. наследование есть только у класса (меняем тотже самый объект)
 */

//Создать класс родитель и 2 класса наследника. Например, родитель - животное, а 2 наследника: жираф и крокодил. Распечатать их общее родительское свойство, а затем уникальные свойства

class Animal {
    let local = "Africa" // общее свойство для всех животных
    let name: String // имя животного
    let type: String // тип питания животного
    
    init(name: String, type: String){
        self.name = name
        self.type = type
    }
}
class Giraffe: Animal { // наследование родительского класса Animal
    let neckLength: Double // уникальное свойство жирафа
    init(neckLength: Double, name: String, type: String){
        self.neckLength = neckLength
        super.init(name: name, type: type)
    }
    func isItPredator(){
        print("Это \(name), он \(type), живет в \(local)")
        print("У него шея \(neckLength) м")
    }
}
class Crocodile: Animal {
    let teethCount: Int // уникальное свойство крокодила
    init(teteethCount: Int, name: String, type: String){
        self.teethCount = teteethCount
        super.init(name: name, type: type)
    }
    func isItHerbivore(){
        print("Это \(name), он \(type), живет в \(local)")
        print("У него \(teethCount) зубов")
    }
}

let giraffeInstance = Giraffe(neckLength: 2.5, name: "Жираф", type: "тровоядный") //объект класса
let crocodileInstance = Crocodile(teteethCount: 80, name: "Крокодил", type: "хищник")

crocodileInstance.isItHerbivore()
giraffeInstance.isItPredator()


//Написать программу, в которой создать класс Car *name*, *countWheels* и несколько методов - *ride*(выводит произведение свойств), *stop*, *explode*


class Car {
    let name: String
    let countWheels = 4
    let spacing: Double //расстояние
    let time: Double // время
    let k: Double // коэффициент сцепления

    
    init(name: String, spacing: Double, time: Double, k: Double){
        self.name = name
        self.spacing = spacing
        self.time = time
        self.k = k
    }
    
    func rideCar() -> Double {
        return spacing / time
        
    }
    
    func stopCar() -> Double{
        let velocity = rideCar()
        return velocity * velocity / k
    }
    
    func explode(){
        let velocity = rideCar() // Получаем рассчитанную скорость из метода rideCar
        let stopDistance = stopCar() // Получаем рассчитанную остановку из метода stopCar
        print("Твоя \(name) со скорость \(velocity) и остановкой \(stopDistance) разобъется")
    }
    
}

let resultCar = Car(name: "Мерседес", spacing: 235, time: 2, k: 0.8)

print(resultCar.rideCar())
print(resultCar.stopCar())
resultCar.explode()


//Создайте Класс с учениками, в котором будет метод, который принимает структуру/класс учеников и сортирует их по оценкам и возвращает отсортированных учеников

class Student { // Создаём класс одного ученика
    let name: String
    let grade: Int
    
    init(name:String, grade: Int){
        self.name = name
        self.grade = grade
    }
}
class School { //Создаём отдельный класс School, который работает с учениками
    
    func sortStudents(list: [Student]) -> [Student] {
       return list.sorted{$0.grade > $1.grade}
    }
}
let students = [
        Student(name: "Анна", grade: 100),
        Student(name: "Катя", grade: 75),
        Student(name: "Маша", grade: 90)
    ]
let school = School() // Создаём объект класса School
let sorteredSrudents = school.sortStudents(list: students) // Передаём массив учеников в метод и получаем отсортированный массив
for student in sorteredSrudents { // Проходим по каждому ученику из отсортированного массива
    print("\(student.name) и \(student.grade)")  // Печатаем имя и оценку ученика
    }


//Написать структуру или класс, и показать на примерах, чем отличается структура от класса

/*
 Задание: “Корзина с товарами”. Нужно создать две модели товара:
 1. struct ProductStruct
 2. class ProductClass
 У каждой модели должны быть свойства:
 * name — название товара
 * price — цена
 * isFavorite — добавлен ли товар в избранное
    */

struct ProductStruct {
    var name: String
    var price: Int
    var isFavorite: Bool
}

var productCartStruct1 = ProductStruct(name: "Краска", price: 150, isFavorite: true)
var productCartStruct2 = productCartStruct1 // productCartStruct2 = productCartStruct1 создаётся копия

productCartStruct2.isFavorite = false // изменения не влияют на оригинал

print(productCartStruct1)
print(productCartStruct2)


class ProductClass {
    var name: String
    var price: Int
    var isFavorite: Bool
    
    init(name: String, price: Int, isFavorite: Bool) {
        self.name = name
        self.price = price
        self.isFavorite = isFavorite
    }
}

var productCartClass1 = [
    ProductClass(name: "Краска", price: 150, isFavorite: true),
    ProductClass(name: "Кисточка", price: 70, isFavorite: true),
    ProductClass(name: "Валик", price: 40, isFavorite: true)
]
var productCartClass2 = productCartClass1 // не создается копия объекта, обе переменные смотрят на один и тот же объект
productCartClass2[0].isFavorite = false // изменения видны через обе переменные

for product in [productCartClass1[0], productCartClass2[0]]{
    print("Название: \(product.name), цена \(product.price), избранное \(product.isFavorite)")
} // красиво распечатываем
