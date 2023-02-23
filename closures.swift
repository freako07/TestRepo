//let driving = {
//print("I am driving")
//}

//driving()

/*
let driving = { (place : String) in
 print("I am driving in \(place).")

}

driving("Dwarka")

var cleanRoom = { (place : String) in 
print("I am cleaning the \(place).")
}

cleanRoom("Kitchen")

var pickFruit = { (name: String) in
	switch name {
	case "strawberry" :
		fallthrough
	case "raspberry" :
		print("Strawberries and raspberries are half price!")
	default:
		print("We don't have those.")
	}
}

pickFruit("strawberry")

var cutGrass = { (currentLength: Double) in
	switch currentLength {
	case 0...1:
		print("That's too short")
	case 1...3:
		print("It's already the right length")
	default:
		print("That's perfect.")
	}
}

cutGrass(4)
*/

//let drivingWithReturn = { (place : String) -> String  in 
  //       return"I am going to \(place) in my car."
//}
//let message = drivingWithReturn("Dwarka")
//print(message)

/*
let payment = { () -> Bool in
    print("Paying to unknown person …")
    return true
    }
    
let message = payment()
print(message)

let measureSize = { (inches: Int) -> String in
	switch inches {
	case 0...26:
		return "XS"
	case 27...30:
		return "S"
	case 31...34:
		return "M"
	case 35...38:
		return "L"
	default:
		return "XL"
	}
}
let size = measureSize(36)
print("Size is \(size).")
*/

/*
let driving = {
    print("I am driving car ...")
}
func travel(action :() -> Void){
    print("I am ready to go")
    action()
    print("Arrived!")
}

travel(action: driving) //closures as parameters in function
*/


/*
func getUSerData(for id : Int) -> String
{
    if id == 5{
        return "taylor swift"
    }else
    {
        return "Anonymous"
    }
}

let data : (Int) -> String = getUSerData
let user = data(1900)
print(user)



let team = ["Gloria","Piper","Susan","Grace","Perry"]

let captainFirstTeam = team.sorted(by: { (name1: String , name2: String) -> Bool in 
        if name1 == "Susan" {
            return true
        }
            else if name2 == "Susan"{
                return false
            }
            
            return name1 < name2
})

print(team)
*/

/*
func travel(action : () -> Void){
    print("I am ready to go.")
    action()
    print("I arrived")
}

//travel(){
  //  print("I am driving a car")                           // trailing synatx 
}
*/

//travel { print("Yes this works also without parenthesis.") }

/*
func travel(action :(String) -> Void){
    print("I am ready to go.")
    action("Dwarka")
    print("I arrived")
}                                   // trailing closure and passing parameter in it 

travel{ (place : String) in 
print("I am going to \(place)")
}
*/

/*
func makePizza(action : (Int) -> Void) {
	print("The dough is ready.")
	print("The base is flat.")
	action(4)
}
makePizza { (toppingCount: Int) in
	let toppings = ["ham", "salami", "onions", "peppers"]
	for i in 0..<toppingCount {
		let topping = toppings[i]
		print("I'm adding \(topping)")
	}
}
*/
func repair(fix: String , bill: (Int) -> Void){
    print("The repaired item is \(fix).")
    bill(600)
}

repair(fix :"roof"){ (bill : Int) in 
print("The bill for repairing is \(bill).")
}


