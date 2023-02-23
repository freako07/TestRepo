class Singer {
    var name : String
    var age : Int


init(name : String)
{
    self.name = name
    age = Int.random(in: 2...32)
}
        func sing()
        {
            print("la la la la")
        }
       // func increaseAge()
        //{
          //  self.age += 5
    //    }
}


let amar = Singer(name : "Amar")
print(amar.name)
print(amar.age)
amar.sing()
//amar.increaseAge()
print(amar.age)
/*
var bar = amar
bar.increaseAge()
print(bar.age)
print(amar.age)


if amar === bar {           // to check(===)if both instance are pointing at same memory.
    print("same memory")   
}  else
{
    print("not same memory ")
}

*/

/*
class countrySinger : Singer{
    override func sing()                
    {           
        print("blah blah blah blah")
    }
}               // use of inheritance in class and override func

//var amar = countrySinger(name : "Amar" , age:25)
//amar.sing()
*/




/*
class heavySinger: Singer{
    var noise : Int
                init(name : String , age: Int,noise : Int)
                    {
                        self.noise =  noise
                       super.init(name: name ,age : age)
                    }
                    override func sing()
                    {
                        print(("grrr grrr grrr grrr"))
                    }
}

var amar = heavySinger(name : "Amar" , age : 25, noise : 50)
amar.sing()

*/
/*
class Vehicle{
    func vroom()
    {
      print("vroom vroom")
    }
}

class Car : Vehicle{
    
}

let cars = Car()
cars.vroom() // inheritance of class and child class uses values from parent class
*/

/*
class User{
    var username = "Amar"
    
    func changeUsername() -> User{
        let user = User()
       user.username = username
        return user
    }
}

//var user1 =  User()
var user2 =  User()
user2.username = "Gokani"

//print(user1.username)
print(user2.username)

*/
    