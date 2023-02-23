/*
struct Person{
            var clothes: String{
            willSet{
                updateMsg(msg: "i have changes my clothers from \(clothes) to \(newValue)")
            }
            
            didSet{
                updateMsg(msg: "i just changed my clothes from \(oldValue) to \(clothes)")
            }
}
}

func updateMsg(msg : String)
{
    print(msg)
}


var yalor = Person(clothes: "pants")
yalor.clothes = "skirts"
*/

/*
struct Age{
    var age:Int
    
    var ageInDoYears: Int
    {
        return age*5
    }
}


var fans = Age(age : 50)
print(fans.ageInDoYears)


*/

/*
struct Diary{
    var contacts = [String](){
        willSet{
            print("cuurent value is: \(contacts)")
            print("new value added is: \(newValue)")
        }
        
        didSet{
            print("No on contacts are: \(contacts.count)")
            print("old value was: \(oldValue)")
        }
    }
}


var nos = Diary()
nos.contacts.append("Amar")
nos.contacts.append("Mahi")
nos.contacts.append("Raina")
*/


struct Taylor
{
    
        var name: String
        var age: Int
        static var favsong = "perfect"
        
}

        
        
         let fan = Taylor(name: "amar" , age : 55)
         print(Taylor.favsong)
         print(fan.name)
         let fanss = Taylor(name: "amsssar" , age : 55)
         print(Taylor.favsong)
         print(fanss.name)


struct School{
    static var studentCount = 0
    
    static func add(name : String){
        print("\(name) joined the school")
        studentCount += 1
        print("No of students are : \(studentCount)")
    }
}

School.add(name : "Amar")
School.add(name : "Mahi")
School.add(name : "Raina")







