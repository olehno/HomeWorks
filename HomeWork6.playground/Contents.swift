import UIKit

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result
 
 var result = numberOne
 
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
 return result
 
 */

enum CalculationType: String {
    case addition = "addition"
    case subtraction = "subtraction"
    case multiplication = "multiplication"
    case division = "division"
}

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo:Int, withCalculationType calculationType: CalculationType) -> Int {
    var result = numberOne
    
    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
        result /= numberTwo
    }
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}

/*
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 */
let firstNumber = 12
let secondNumber = 4

calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .addition)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .subtraction)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .multiplication)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .division)


/*
 Exercise 2
 
 Create struct Car with elements
 name: String
 productionYear: Int
 horsPower: Int
 
 Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsPower: Int
    
    func getSpecs() {
        print("\(name) \(productionYear) has \(horsPower) horsepower")
    }
}

var bugatti = Car(name: "Bugatti", productionYear: 2023, horsPower: 1500)
bugatti.getSpecs()
