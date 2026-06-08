import UIKit

//Создать 5 разных Tuples с различными типами данных. Один из них должен содержать все месяца года на русском. Второй на английском
//Распечатать Tuples 3мя различными способами
//Создать пустой Tuples

// пустоq Tuples
let emptyTuples: () = ()

let (product, price, color, available) = ("Coffee", 250.50, "black", true)

print(product,price)

let statusCode = (
    code200:(200, "OK"),
    code404:(404, "Not Found"),
    code500:(500, "Internal Server Error")
)

print(statusCode)

let monthRu = (
    monthRu1:"Январь",
    monthRu2: "Февраль",
    monthRu3: "Март",
    monthRu4: "Апрель",
    monthRu5: "Май",
    monthRu6: "Июнь",
    monthRu7: "Июль",
    monthRu8: "Август",
    monthRu9: "Сентбрь",
    monthRu10: "Октябрь",
    monthRu11: "Ноябрь",
    monthRu12: "Декабрь"
)


let monthEn = (
    monthEn1: "January",
    monthEn2: "February",
    monthEn3: "March",
    monthEn4: "April",
    monthEn5: "May",
    monthEn6: "June",
    monthEn7: "July",
    monthEn8: "August",
    monthEn9: "September",
    monthEn10: "October",
    monthEn11: "November",
    monthEn12: "December"
)


print("Месяц \(monthRu.monthRu1) на Английский переводится \(monthEn.monthEn1)")
