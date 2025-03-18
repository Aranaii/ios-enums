import Foundation

// 1. Создание двух enum с разным типом RawValue
enum Direction: String {
    case north = "North"
    case south = "South"
    case east = "East"
    case west = "West"
}

enum AgeCategory: Int {
    case child = 0
    case teenager = 1
    case adult = 2
    case senior = 3
}

// 2. Enum для анкеты сотрудника
enum Gender: String {
    case male = "Male"
    case female = "Female"
}

enum Grade: Int {
    case junior = 1
    case middle = 3
    case senior = 5
}

// 3. Enum со всеми цветами радуги
enum RainbowColor: String {
    case red = "Red"
    case orange = "Orange"
    case yellow = "Yellow"
    case green = "Green"
    case blue = "Blue"
    case indigo = "Indigo"
    case violet = "Violet"
}

// 4. Функция, которая выводит содержимое массива разных case'ов enum
func printFruitsAndColors() {
    let fruitsAndColors: [(String, RainbowColor)] = [
        ("apple", .green),
        ("banana", .yellow),
        ("cherry", .red),
        ("blueberry", .blue)
    ]
    
    for (fruit, color) in fruitsAndColors {
        print("\(fruit) \(color.rawValue)")
    }
}

// Вызов функции
printFruitsAndColors()

// 5. Функция, которая выставляет оценки ученикам
enum Score: String {
    case excellent = "A"
    case good = "B"
    case satisfactory = "C"
    case unsatisfactory = "D"
    
    func numericValue() -> Int {
        switch self {
        case .excellent:
            return 5
        case .good:
            return 4
        case .satisfactory:
            return 3
        case .unsatisfactory:
            return 2
        }
    }
}

// Пример использования функции
func printScore(for score: Score) {
    print("Оценка: \(score.rawValue) соответствует числовому значению: \(score.numericValue())")
}

// Вызов функции
printScore(for: .excellent)
printScore(for: .good)

// 6. Метод, который выводит в консоль какие автомобили стоят в гараже
enum Car: String {
    case toyota = "Toyota"
    case nissan = "Nissan"
    case bmw = "BMW"
    case honda = "Honda"
    case mercedes = "Mercedes"
}

func printCarsInGarage() {
    let carsInGarage: [Car] = [.toyota, .nissan, .bmw, .honda, .mercedes]
    
    print("Автомобили в гараже:")
    for car in carsInGarage {
        print(car.rawValue)
    }
}

// Вызов функции
printCarsInGarage()