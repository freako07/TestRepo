/*
enum Direction {
    case up
    case down
    case left
    case right
}

//enum Direction {
   // case up, down, left, right
//}

var direction = Direction.up

//direction = .left

switch direction {
case .up:
    print("up")
case .down:
    print("down")
case .left:
    print("left")
case .right:
    print("right")
}
*/

/*
enum Beverage: CaseIterable {
    case coffee, tea, juice , milk
}

let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

*/

/*
enum Planet : Int {
    case mercury = 1, venus, earth 
}

let earthsOrder = Planet.earth.rawValue
print("The order of earth is \(earthsOrder)")


let possiblePlanet = Planet(rawValue : 2)
print(possiblePlanet!)
*/


/*
enum Planet : Int{
    case mercury = 1 
    case venus 
    case earth = 4
    case mars  
    case jupiter 
    case saturn
    case uranus
    case neptune
    case pluto
    
}

//let earthOrder = Planet.earth.rawValue
//print("Earth order is: \(earthOrder)")

//let postionToFind = 6
let postionToFind = 1
 let somePlanet = Planet(rawValue : postionToFind)
    switch somePlanet{
        case .earth : print("Harmless")
        case .jupiter: print("This is jupiter")
        case .mercury, .venus , .mars, .saturn, .uranus, .neptune, .pluto: print("Not a safe planet.")
        
        default: print("Cant find this planet")
}
*/

/*
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}


var caseCheck = Activity.talking(topic: "football")
//print(caseCheck)

var answer = caseCheck

answer = .running(destination : "Dubai")

print(caseCheck)

print(answer)
*/


/*
enum Direction{
    
    case east, west, north, south
    
    var side : String{
        switch self{
            case .east : return "East direction."
            case .west : return "West direction."
            case .north : return "North direction."
            case .south : return "South direction."
        }
    }
}

let direction = Direction.west

print(direction.side)
*/


/*
enum Student{
    case freshers, junior, senior, graduated
    
    mutating func advance(){
        switch self{
            case .freshers : self = .junior
            case .junior : self = .senior
            case .senior : self = .graduated
            case .graduated: self = .graduated
        }
    }
}

var studentobj = Student.freshers
print(studentobj)

studentobj.advance()
studentobj.advance()
studentobj.advance()
print(studentobj)
*/



enum Age{
    case baby, kids, teenagers, adults, seniorCitizen
    
    init(ageNumber: Int){
        switch ageNumber{
            case 0..<3 : self = .baby
            case 3...12 : self = .kids
            case 13...19 : self = .teenagers
            case 20...60 : self = .adults
            default : self = .seniorCitizen
        }
    }
}

let ageCategory = Age(ageNumber : 3)
print(ageCategory)



