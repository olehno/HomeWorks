import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let deposit: Int = 500000
let period: Int = 5
let rate: Double = 0.015
var profit: Double = 0

for _ in 1...period {
    profit = profit + Double(deposit) * rate
}

print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var evenNumber: [Int] = []

for numbers in numbers {
    if numbers % 2 == 0 {
        evenNumber.append(numbers)
    }
}

print("My even numbers are: \(evenNumber)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter: Int = 0
var randomNumber: Int = 0

for _ in 1...100 {
    counter += 1
    let randomNumber = Int.random(in: 0...100)
    if randomNumber == 5 {
        print("By for loop: Number 5 will be after \(counter) shuffles")
        break
    }
}

counter = 0

// In my opinion, this version would be more correct
while randomNumber != 5 {
    counter += 1
    randomNumber = Int.random(in: 1...100)
}

print("By while loop: Number 5 will be after \(counter) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var numberOfDays: Int = 0
var distance: Int = 0

while true {
    numberOfDays += 1
    distance += 2
    if distance >= 10 {
        print("bug will spend \(numberOfDays) days to reach top of the post")
        break
    }
    distance -= 1
}
