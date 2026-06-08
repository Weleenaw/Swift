import UIKit
/*
 enum Название { // Создаём enum
     case вариант1 // Первый возможный вариант
     case вариант2 // Второй возможный вариант
     case вариант3 // Третий возможный вариант
 }
 let value: Название = .вариант1 // Создаём значение enum и выбираем один case
 */

// enum в Swift — это тип данных, где ты заранее перечисляешь возможные варианты.
// enum = список разрешённых значений


//Создайте по 1-2 enum разных типов. Можно брать примеры из жизни. Тип дня .day, .night

enum StreetLigtht {
    case red
    case yellow
    case green
}

enum StatusHttp: Int {
    case success = 200
    case notFound = 404
    case serverError = 500
}



//Создай enum Weekday, где будут дни недели, Создай функцию, которая принимает день недели и возвращает строку:
enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

func workDayOrWeekend(day: WeekDay) -> String {
    switch day {
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        return "Рабочий день"
    case .saturday, .sunday:
        return "Выходной день"
    }
}

let result = workDayOrWeekend(day: .friday)

print(result)

//Создать несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст, ФИО, стаж
enum EmployeeDetails {
    case sex(String)
    case fullName(String)
    case age(Int)
    case workExperience(Int)
}

var employeeProfile: Dictionary<String, EmployeeDetails> = [
    "Sex": EmployeeDetails.sex("Female"),
    "Full Name": EmployeeDetails.fullName("Anna Ivanova"),
    "Age": EmployeeDetails.age(22),
    "Work Experience": EmployeeDetails.workExperience(1)
]


//Создать enum со всеми цветами радуги

enum RainbowColor{
    case red
    case orange
    case yellow
    case green
    case blue
    case indigo
    case violet
}

let color = RainbowColor.blue

//Создать enum оценок, а затем функцию, которая будет принимать этот enum и печатать в консоль какую оценку получил ученик


enum StudentGrade: Int {
    case one
    case two
    case three
    case four
    case five
}

func whatGradeDidYouGet(grade: StudentGrade) -> Int {
    switch grade {
    case .one:
        return 1
    case .two:
        return 2
    case .three:
        return 3
    case .four:
        return 4
    case .five:
        return 5
    }
}

let studentGrade = whatGradeDidYouGet(grade: .five)

print(studentGrade)



//Создать программу, которая "рассказывает" - бренды автомобилей стоят в гараже

enum CarBrands: String, CaseIterable { //CaseIterable — это встроенный в Swift протокол, который автоматически генерирует коллекцию всех доступных вариантов (кейсов) вашего перечисления (enum).
    case mersedes = "Mercedes"
    case bmw = "BMW"
    case audi = "Audi"
    case lada = "Lada"
    case mazda = "Mazda"
}


func garageCars(){
    for car in CarBrands.allCases { // статическое свойство .allCases, которое возвращает массив всех кейсов в порядке их объявления
        print("В гараже стоит автомобиль бренда \(car.rawValue)")
    }
}

garageCars()
