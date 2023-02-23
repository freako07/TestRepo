abcdclass Singer {
    var name : String
    private (set) var age : Int


init(name : String, age: Int)
{
    self.name = name
    self.age = age
}
        func increaseAge()
        {
            self.age += 5
        }
}

let amar = Singer(name : "Amar" , age:25)
print(amar.age)
amar.increaseAge()
print(amar.age)


struct Bank{
  fileprivate (set) var funds = 0
     var withdraw = 0   
    mutating func deposit(amount: Int){
        funds += amount
    }
    
    mutating func withdraw(amount : Int) -> Bool {
        if funds > amount {
            funds -= amount
            withdraw += amount
            return true
        }   
        else
        {
            return false
        }
    }
}
    
var account = Bank()
account.deposit(amount: 1000)
print("funds are : \(account.funds)")

var success = account.withdraw(amount : 200)
if success{
    print("Withdrawn : \(account.withdraw) ")
}   else
{
    print("no sufficient balance")
}
//account.funds -= 500  // can access this if funds was not set to private 
print("funds available are : \(account.funds)")