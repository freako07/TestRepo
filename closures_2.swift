/*
func travel(action : (String) -> String){
    print("Ready to go")
    let message = action("London")
    print(message)
}   

travel { (place: String) -> String in 
        return "We reached \(place)"
}
*/

/*
func reduce(_ numbers: [Int] , closure: (Int,Int) -> Int) -> Int{
    
    var current = numbers[0]        //fist value 
    
    for number in numbers[1...] {   //looping the whole array 
      current = closure(current, number) //calling our closure with current sum and next value in array 
    }
    
    return current
}

    let sum = reduce([10,4,5]) { (currentTotal, value) in 
    currentTotal + value
    }
    print(sum)
    
    
*/

/*
func scoreToGrade(score: Int, gradeMapping: (Int) -> String) {
	print("Your score was \(score)%.")
	let result = gradeMapping(score)
	print("That's a \(result).")
}
scoreToGrade(score: 80) { (grade: Int) in
	if grade < 85 {
		return "Fail"
	}else {
	    return "pass"
          }	
}
*/

func travel(action : (String, Int) -> String){
    print("Ready to go")
    let message = action("London",50)
    print(message)                          //Shorthand parameter names
}   

travel{ place, minutes in 
     "We reached \(place) in \(minutes) minutes."
}

travel{ 
    "We reached \($0) in \($1) minutes."       //Shorthand parameter names instead of writing parameter name in closure 1                                                      //we can use like this
}

/*
func scoreToGrade(score: Int, gradeFind: (Int) -> String) {
	print("Your score was \(score)%.")
	let result = gradeFind(score)
	print("That's a \(result).")
}

scoreToGrade(score: 87) { grade in              
	if grade < 85 {
		return "Fail"
	}else {
	    return "pass"
          }	
}
*/

/*

func add(lhs : Int, rhs: Int, add:(Int,Int) -> Int) {
   let answer = add(lhs ,rhs)
    print("Addition is \(answer).")
}

add(lhs :20,rhs :30) {          //func wit multiple parameters and also using shorthand parameter
       return $0 + $1 
}
*/

/*
func travel() ->(String) ->Void{
    return{
        print("I am going to \($0)")    // returning closures from functions
    }
}
let result = travel()
result("London")
*/

/*
func ageChecks(value: Bool) -> (Int) -> Void {
	if value {
		return {
			if $0 <= 21 {
				print("true")
			} else {
				print("false")
			}
		}
	} else {
		return {
			if $0 <= 18 {
			print("true")
			} else {
				print("false")
			}
		}
	}
}
let ageCheck = ageChecks(value: true)
let result = ageCheck(20)
*/
    
    /*
    func checkAge(value: Bool) -> (Int) -> (String){
        if value{
            return {
                if $0 < 18{                                 
                    return "under age"
                            }   else if $0 > 19 {
                    return "Teen age over"
                        }       else{
                    return "Last year in teen age"          
                    }                                   //ret closures from functions
                }
            }   else{
                return {
                    if $0 < 60{
                        return "not a senior ciizen."
                    }  else{
                        return "Senior citizen"
                    }
                }
            }
    }
    let ageCheck = checkAge(value : true)
    let result = ageCheck(20)
    print(result)
    */
    
    func batsman() -> () -> Void{
        var strikes = 0
        return {
            strikes += 1
            if strikes >= 3{
                    print("batsman is in form.")
                } else{
                    print("batsman is out of form")
                }
            }
        }
        
    let swing = batsman()
    swing()
    swing()
    swing()