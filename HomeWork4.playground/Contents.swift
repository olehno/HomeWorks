import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam: String = "Boys"
var resultsOfGames: [String : [(String, String)]] = [:]

resultsOfGames["Brooklyn Nets", default: []].append(("99", "89"))
resultsOfGames["Brooklyn Nets", default: []].append(("109", "99"))
resultsOfGames["Dallas Mavericks", default: []].append(("87", "93"))
resultsOfGames["Dallas Mavericks", default: []].append(("104", "97"))
resultsOfGames["Washington Wizards", default: []].append(("117", "112"))
resultsOfGames["Washington Wizards", default: []].append(("107", "122"))

for (team, scores) in resultsOfGames {
    for (score1, score2) in scores {
        print("\(myTeam) against \(team) scored - \(score1):\(score2)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var wallet: [Int] = [5,5,10,10,20,20,50,50,100,100,200,200,500,500]

func moneyCalculator(cash: [Int]) -> Int {
    var totalCash = 0
    for banknote in cash {
        totalCash += banknote
    }
    return totalCash
}

moneyCalculator(cash: wallet)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}

isEven(number: 17)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, to end: Int) -> [Int] {
    var sum: [Int] = []
    for number in start...end {
        sum.append(number)
    }
    return sum
}

var array: [Int] = createArray(from: 1, to: 100)
print(array)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for number in array {
    if isEven(number: number) {
        if let index = array.firstIndex(of: number) {
            array.remove(at: index)
        }
    }
}
print(array)
