import UIKit
import Foundation

var greeting = "Hello, playground"

// Task 1: Understanding Data Types

enum Gender {
    case male
    case female
    case other
}

struct Car {
    var make : String
    var model : String
    var year : Int
    
    func selfPrint()->String{
        return "\(make), \( model), \(year)"
    }
}

class Person {
    var name : String
    var age : Int
    var gender : Gender
    var car : Car
 
    init( name : String, age : Int, gender : Gender, car : Car){
        self.name = name
        self.age = age
        self.gender = gender
        self.car = car
    }
    
    func selfPrint()->String{
     return "Name : \(name)\nAge : \(age)\nGender : \(gender)\nCar specifications: \(car.selfPrint())\n"
    }
}

var gender1 : Gender = Gender.female
var gender2 : Gender = Gender.male
print ("The first gender is:",gender1,"\nThe second gender is:", gender2,"\n")

var car1 : Car = Car(make:"Honda", model:"Accord", year: 1976)
var car2 : Car = Car(make:"Mercedes", model:"Maybach", year: 2023)
print("The first car is:",car1.selfPrint() , "\nThe second car is:",car2.selfPrint(),"\n")

var person1 : Person = Person( name : "Ali Ahmad", age : 21, gender : .male, car : car1)
var person2 : Person = Person( name : "Sara Fahad", age : 25, gender : .female, car : car2 )
print("The first person data\n\(person1.selfPrint())\nThe second person data\n\(person2.selfPrint())")
print("-----------------------------------------------\n")
// Task 2: Memory Management

class  BankAccount {
    
    var balance : Double
    init(balance : Double){self.balance = balance}
    
    
    func deposit(_ depositMoney : Double){
        balance += depositMoney
        print("The current balance is \(balance).SR")
    }
    
    
    func withdraw(_ withdrawMoney : Double){
        if balance >= withdrawMoney {
            balance -= withdrawMoney
            print("The current balance is \(balance).SR")
        }else{
            print("Decline! The balance is insufficient, the current balance is \(balance).SR")
          
        }
     }
}
var bankAccount1 : BankAccount = BankAccount(balance: 1000)
var bankAccount2 : BankAccount = BankAccount(balance: 100000)
bankAccount1.deposit(500)
bankAccount1.withdraw(890)
bankAccount1.withdraw(700)
print()
bankAccount2.deposit(100000)
bankAccount2.withdraw(200000)
bankAccount2.withdraw(1)
