/*
class Demo{
    func demo1(){
        print("print demo1 for base class")
    }
    
    func demo1(aa : Int)
    {
        print("print demo\(aa)")
    }
    
}

class Demo2 : Demo{
  override func demo1(){
        print("print demo1 for derived class")
    }
    }

let abc = Demo()
abc.demo1()
abc.demo1(aa : 2)
abc.demo1()
abc.demo1(aa : 4)

let xyz =  Demo2()
xyz.demo1()
*/

/*
class Customer{
    var name: String?
    private var Pin: String!
    
    init()
    {
        self.Pin="1234"
    }
    
    func validatePin(_ Pin: String) -> Bool
        {
                if self.Pin == Pin
               {
                return true
                }
                
                else
        {
        return false
        }
        }
        
}

let customer =  Customer()
customer.name = "Amar"
print(customer.name!)

let result = customer.validatePin("1234")
print(result)
*/


class Album{
    var name : String
    
    init(name : String)
    {
        self.name = name
    }
    
    func getPerformance() -> String
    {
        return "The album \(name) sold lots."
    }
}   

class studioAlbum : Album{
    var studio : String
    
    init(name : String , studio : String)
    {
        self.studio = studio
        super.init(name : name)
    }
        override func getPerformance() -> String
    {
        return "The album \(name) sold lots."
    }

}

class liveAlbum : Album{
    var location : String
    
    init( name : String, location: String )
    {
        self.location = location
        super.init(name : name)
    }
       override func getPerformance() -> String
    {
        return "The album \(name) sold lots."
    }

}

var amar = studioAlbum(name : "amar" , studio : "warner bros")
var akshay = studioAlbum(name : "akshay" , studio : "universal pictures")
var ranveer = liveAlbum(name : "ranveer" , location : "mumbai")

var allAlbums: [Album] = [ amar , akshay , ranveer]

for album in allAlbums{
    print(album.getPerformance())
}


