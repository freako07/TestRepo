/*
protocol Employee{
        var name : String { get set }
        var jobTitle : String { get set }
        func doWork()
}

struct Manager: Employee{
    var name = "Amar Gokami"
    var jobTitle = "Head of dept"
    
    func doWork(){
        print("Manage all the responsibilities of dept.")
    }
}

struct Sales: Employee{
    var name = "Mark"
    var jobTitle = "Salesman"
    
    func doWork(){
        print("Sale the products.")
    }
}

let staff : [Employee] = [Manager() , Sales()]

for person in staff{
    person.doWork()
}
*/

/*
protocol Vehicle{
    var name: String { get }
    var currentPassengers : Int { get set }
    func estimateTime(for distance : Int) -> Int
    func travel(distance : Int)
}

struct Train : Vehicle{
    let name = "Train"
    var currentPassengers = 565
    func estimateTime(for distance: Int) -> Int{
        distance / 90
    }
    
    func travel(distance : Int){
         print("I have travelled \(distance)km")
    }
    
}

struct Bus : Vehicle{
    let name = "Bus"
    var currentPassengers = 30
    func estimateTime(for distance: Int) -> Int{
        distance / 50
    }
    
    func travel(distance : Int){
         print("I have travelled \(distance)km")
    }
}

func commute(distance : Int , using vehicle : Vehicle){
                if vehicle.estimateTime(for: distance) > 40{
                print("This vehicle is fast")
            } else 
                {
                    vehicle.travel(distance : distance)
                }
}

func getTravelEstimateTimes(using vehicles : [Vehicle], distance : Int){
    for vehicle in vehicles{
        let estimate = vehicle.estimateTime(for : distance)
        print("\(vehicle.name) : Travel time = \(estimate)hours for \(distance)km.")
    }
}

let train = Train()
commute(distance : 1600 , using : train)

let bus = Bus()
commute(distance : 50 , using : bus)

getTravelEstimateTimes(using : [train , bus] , distance : 650)

print(train.currentPassengers)
print(bus.currentPassengers)
*/

extension Int {
    func squared() {
        print(self * self)
    }
}

let num = 8
num.squared()

extension Numeric {
    func squared() -> Self{
        self * self
    }
}

let number = 5.9
print(number.squared())

/*struct User : Equatable{
    let name : String
}

let user1 = User(name : "Amar")
let user2 = User(name: "Amar")
print(user1 == user2)
print(user1 != user2)
*/

struct User : Comparable{
    let name : String
    
    static func <(lhs: User , rhs: User) -> Bool{
        lhs.name < rhs.name
    }
}
let user1 = User(name : "Amar")
let user2 = User(name: "Jay")
print(user1 == user2)
print(user1 != user2)
print(user1 >= user2)
print(user1 <= user2)
print(user1 > user2)
print(user1 < user2)
/*
protocol Jumping{
    func jump()
}

extension Jumping{
    func jump() {
        print("Jumping")
    }
}
struct Animal : Jumping{
    
}
let lion = Animal()
lion.jump()
*/


protocol Name{
    var name : String{ get }
    var age : Int { get set }
    mutating func increaseAge(by value : Int)
}

extension Name{
    func describePerson(){
        print("Your name is \(name) and age is \(age).")
    }
    
    mutating func increaseAge(by value : Int){
        self.age += value
    }
}

struct Person : Name{
    let name : String
    var age : Int
    init(name : String ,age : Int){
        self.name = name
        self.age = age
    }
}   

var amarobj =  Person(name : "Amar" ,age : 21)
amarobj.increaseAge(by: 2)
amarobj.describePerson()

var hardi = Person(name: "Hardi", age : 19)
hardi.increaseAge(by: 2)
hardi.describePerson()

func increaseAgeIfPerson(obj : Any){
    if var person = obj as? Person{
        person.increaseAge(by: 5)
        print(person.age)
    } else {
        print("The obj \(obj) was not of type person")
    }
}

increaseAgeIfPerson(obj: amarobj)       //The age of amar will stay 23 only as it is structure
amarobj.describePerson()                 // so it sends the copy of our obj if we change to class age will change to 28
   
