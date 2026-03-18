import UIKit

//Создать свои типы данных через typealias

typealias str = String

var fruitName: str = "Apple"


//Создать различные выражения с приведением типа
var number1 = 10
var number2 = 15.5
var sum = number1 + Int(number2)

var textError = "Error "
var textCode = 500
var errorText = textError + String(textCode)
print(errorText)


//Как в математике поиграй с выражениями - + / . Для практики нужно вычислить корень квадратного уравнения, площадь треугольника, квадрата, трапеции и тд

// Вычислить корень квадратного уравнения 3x2 - 4x + 2 = 0
// D = b2 - 4ac

var a = 3
var b = -4
var c = 2
var d = (b * b) - (4 * a * c)
print(d)

if d > 0 {
    print("Имеет два корня")
} else if d == 0 {
    print("Имеет один корень")
} else if b < 0 {
    print("Нет корней")
}


// Площадь треугольника S = (a * h) / 2

a = 5
var h = 4
var s = (a * h) / 2
print(s)









