import UIKit

//Task 1
enum Gender {
    case male
    case female
    case other
   /*
    func printSelf(){
        switch self {
        case .male :print("Male")
        default: print(self)
        }
    }*/
}

    
struct Car{
    var make: String
    var model: Int
    var year:Int
    
    func printSelf(){
        print("Make", make)
        print("Model", model)
        print("Year", year)
    }
    
}


class Person {
    var name:String
    var age:Int
    var gender:String
    var car:String
    
    init(
    name:String,
    age:Int,
    gender:String,
    car:String
    ){
        self.name = name
        self.age = age
        self.gender = gender
        self.car = car
    }
    
}
let person1 = Person(name: "Ali", age: 19, gender: "male", car: "Laxus")
   
print(person1.name)
print(person1.age)
print(person1.gender)
print(person1.car)


let person2 = Person (name: "Alanoud", age: 24, gender: "female", car: "merceds")



print(person2.name)
print(person2.age)
print(person2.gender)
print(person2.car)



//Task 2

class BankAccount{
    var balance:Double
    
    init(balance:Double){
        
        self.balance=balance
        
    }
    func deposit(positive:Double) {
        
            balance += positive
            print(balance)
        }
        func withdraw(negative:Double) {
            if balance >= negative{
                balance -= negative
                print(balance)
            }else{
                print(balance)
            }
        }
        var AccountBalance1: BankAccount = BankAccount(balance: 2000)
        var AccountBalance2: BankAccount = BankAccount(balance: 23000)
        AccountBalance1.deposit(1000)
        AccountBalance1.withdraw(300)
        print()
        AccountBalance2.deposit(23000)
    AccountBalance2.deposit(2000)

//Task 3
        
        enum LoginError: Error{
            case invalidUsername
            case invalidPassword
        }

        
        func login(username: String, password: String  ) throws  {
            
            if username == "Alanoud" &&  password == "000"{
                print ("Login valid")
            }
            else if username != "Muneera" || password != "123" {
                throw LoginError.invalidUsername
            }
        }

        do {
            let loginTest = try login(username: "A", password: "00")
        } catch {
            print(error)
            
        }


















