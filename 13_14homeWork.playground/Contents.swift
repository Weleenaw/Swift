import UIKit


// Свойство - это значение, связанные с классом или его экземпляром.
// 1) Если свойство связано с экземпляром класса, то они называются свойствами экземпляра класса
// 2)А если с самим классом, то свойствами типа
// Свойства делятся на два типа:
//  1. Сохраняемые свойства
//  2. Вычисляемые свойства
//getter - вызвать свойство var obser = ... (obser.name)
//setter - что-то записывает obser.name = "Hello"
//class / struct описывает объект
//property описывает данные этого объекта
//method описывает действия этого объекта

/*
 Создать класс "Students", добавить ему property: dateOfBirth, skills. Создать свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.
 */


class Students {
   var dateOfBirth: String
    var skills:[String]
    
    init(dateOfBirth: String, skills: [String]) {
        self.dateOfBirth = dateOfBirth
        self.skills = skills
    }
}

//stored properties - сохраняемые свойства
struct Course {
    
    var courseName: String {
        willSet{
            print("Сохранили новое название курса" + " " + newValue)
        }
        didSet{
            print("Страрое название курса \(oldValue)")
        }
    }
}

var courses = Course(courseName: "Обучение Python")

courses.courseName = "Обучение Swift"

// Computed Properties - вычисляемые свойства
struct User {
    var firstName: String
    var lastName: String
    
    var fillName: String {
        get {
            return firstName.capitalized + " " + lastName.capitalized // capitalized нужен чтобы первая буква каждого слова становится заглавной, а все остальные буквы переводятся в нижний регистр
        }
        set{
            print("Сохранено")
        }
    }
}

var userName = User(firstName: "Anna", lastName: "pupkina")

print(userName.fillName)

/*
Написать структуру "CreateTriangle", с двумя свойствами - угол A, угол C. В которые мы можем записать какие-то значения, и сделать вычисляемое свойство угол B, которые будет вычисляться по правилу суммы углов треугольника (180 градусов). То есть, мы записываем в угол A - 50 градусов, C - 120 градусов, а в B будет автоматически вычисляться свойство и возвращать нам 10 градусов
 */


struct CreateTriangle {
    var angleA: Int
    var angleС: Int
    
    var result: Int {
        return 180 - angleA - angleС
    }
}

var angleB = CreateTriangle(angleA: 50, angleС: 120)

print(angleB.result)

/*
Создать структуру "Резюме", у которой есть такие свойства:
- Фамилия,
- Имя,
- Должность (может быть enum, с определенным набором должностей)
- Опыт,
- Контактные данные (телефон, емейл) (Может быть другой структурой)
 */

enum JobTitle: String {
    case qaEngineer = "Qa Engineer"
    case developer = "Developer"
    case manager = "Manager"
    case aqaEngineer = "QAQ Engineer"
}

struct Contacts {
    let phone: Int
    let email: String
}

struct Resume {
    let surname: String
    let name: String
    let experience: Int
    let jobTitle: JobTitle
    let contactDetails: Contacts
    
    func printResume() {
        print("Фамилия: \(surname), Имя: \(name), Опыт: \(experience) год, Должность: \(jobTitle.rawValue), Контакты: Почта - \(contactDetails.email), Телефон \(contactDetails.phone)")
    }
}

var candidates = Resume(surname: "Pupkina", name: "Anna", experience: 1, jobTitle: .qaEngineer, contactDetails: .init(phone: 79998887766, email: "pupkinaA@mail.com"))


candidates.printResume()


/*
Написать класс, в котором есть 4 метода:
- Пустой, которая просто выводит сообщение через print;
- Который принимаете параметры и выводит их в консоль;
- Который принимает и возвращает параметры;
- Который принимает замыкание и распечатывает результаты в консоль.
 */

class CandidatePrinter {
    let name: String
    let surname: String
    let age: Int
    let experience: Int
    let jobTitle: String
    
    init (name: String, surname: String, age: Int, experience: Int, jobTitle: String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.experience = experience
        self.jobTitle = jobTitle
    }
    
    enum GradeCandidate: String {
        case juniorCandidate = "Junior кандидат"
        case middleCandidate = "Middle кандидат"
        case seniorCandidate = "Senior кандидат"
    }
    
    func greeting(){
        print("Добро пожаловать в команду")
    }

    func applicant(phone:String, email: String){
        print("Кандидат \(name) \(surname) претендует на позицию \(jobTitle), опыт работы \(experience). Контанты тeлефон \(phone), почта \(email)")
    }
    

    let grade = { (experience: Int) -> String in
        switch experience {
        case 0 ... 1:
            return GradeCandidate.juniorCandidate.rawValue
        case 2 ... 3:
            return GradeCandidate.middleCandidate.rawValue
        case 4 ... 10:
            return GradeCandidate.seniorCandidate.rawValue
        default:
            return "Вы нам не подходите"
        }
    }
}

let resumeAplicant = CandidatePrinter(name: "Анна", surname: "Пупкина", age: 23, experience: 1, jobTitle: "Qa Engineer")

resumeAplicant.applicant(phone: "7 900 888 77 77", email: "pupkinaanna@mail.com")

print(resumeAplicant.grade(resumeAplicant.experience)) // берет опыт из resumeAplicant

resumeAplicant.greeting()
