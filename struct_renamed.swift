/*
struct Person{
    var clot : String
    var shoes : String

    func describe()
    {
        print("i like wearing \(clot) and \(shoes)")
    }
}

var taylor = Person(clot : "red", shoes : "blue")
let jannie = Person(clot : "pink", shoes : "white")

print(taylor.clot)
print(jannie)

taylor.clot = "purple" 

var taylorCopy = taylor
print(taylorCopy)
taylorCopy.shoes = "black"
print(taylorCopy)

taylor.describe() 
*/

/*
struct Computer{
    let name : String
    let manufacuturer = "Lenovo"
    
   // init(name : String)
  // {
     //   self.name = name
       // self.manufacuturer = "Lenovo" // passing values using func
    // }
    }
    

let lenovo = Computer(name: "Ideapad")
print(lenovo.name)
*/

/*
struct Person
    {
        let name: String
        let address: Address?
        struct Address
        {
            let firstline: String?
        }
    }
    
  let amar: Person? = Person(
      name : "Amar",
      address: Person.Address(
      firstline :"Prahladnagar"
  )
  )
  
        switch amar?.address?.firstline 
        {
            case .some(let firstline) where firstline.starts(with:"Pra") :
            print("Amar's first address line is : \(firstline)")
    
            case .some(_) : print("Lines didnt match")
            
            default :
            break
            
          }
          */
          
struct Bike
{
    let name: String
    let speed: Int
    func changeSpeed(named :String , cspeed: Int) -> Bike{
      return Bike(name : named , speed : cspeed)
    }
    
}
    let bike1 = Bike(name: "Honda",speed: 50)
    let bike2 = bike1.changeSpeed(named :"bullet" , cspeed: 80)       
    print(bike2)
       // way of changing values in struct by using constants
    