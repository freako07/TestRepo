/*
class MediaItem{
    var name : String   
    
    init(name : String){
        self.name =  name
    }
    func getMedia() -> String{
        return "The album \(name) is ..."
    }
}
    
    class Movie : MediaItem{
        var director: String
        
        init(name: String, director : String)
        {
            self.director =  director
            super.init(name: name)
        }
        override func getMedia() -> String
        {
            return "The name of library \(name) is movie."
        }
    }
    
    
    class Song : MediaItem{
        var singer: String
        
        init(name: String, singer : String)
        {
            self.singer =  singer
            super.init(name: name)
        }
        override func getMedia() -> String{
            return "The name of library \(name) is song."
        }
}

var perfect =   Song(name : "Perfect" , singer : "Smith")
var memories =  Song(name : "Memories" , singer : "Marron")
var pathaan =   Movie(name : "Pathaan" , director : "Sidhharth")
var drishyam =  Movie(name:"Drishyam", director : "Abhisek")
var snap =      Song(name: "Snap", singer : "Rosa linn")
    
let library: [MediaItem] = [perfect, memories, pathaan, drishyam, snap]
    
    var movieCount = 0
    var songCount = 0
    
    for MediaItem in library{
        if MediaItem is Movie{ // checking of type is it movie or Song
            movieCount += 1
        } 
        else if MediaItem is Song{
            songCount += 1
        }
}

print("No of movies are: \(movieCount) and songs are \(songCount)")

    
   for MediaItem in library{
            if let movie = MediaItem as? Movie{                                     
        print("The name of movie is: \(movie.name) and director is: \(movie.director)")
       }    else if let song = MediaItem as? Song{
        print("The name of song is: \(song.name) and singer is: \(song.singer)")
    }
}     

for MediaItem in library{
    if let movie = MediaItem as? Movie{             //optional casting is used 
        print(movie.getMedia())   
   } else if let song = MediaItem as? Song{
        print(song.getMedia())
}
}

var songAlbums : [MediaItem] = [perfect, memories, snap] 
var movieAlbums : [MediaItem] = [pathaan, drishyam]

for songitem in songAlbums{
    let song = songitem as! Song                    // forced casting is used
    print("The singer is \(song.singer).")
}


for movieitem in movieAlbums{
    let movie = movieitem as! Movie
    print("The director is \(movie.director).")
}
*/

/*
var isAString = 0 
var isAInt = 0 
var number = 0
while(number < 10){
func run(){
    let mystery: Any = Bool.random() ? "Hello world" : 42
    
    
    if let itsAString = mystery as? String{
        print("The mystery is of: \(itsAString).")
        isAString += 1
    }
    if let itsAnInt = mystery as? Int{
        print("The mystery is of: \(itsAnInt).")
        isAInt += 1
    }
}
        number += 2
        run() 
}
print("The no of times mystery is an Int = \(isAInt)")
print("The no of times mystery is a String = \(isAString)")
*/


class LivinBeing{
    var age : Int?
    
    init(age :Int?){
        if let age = age {
        self.age = age 
     }
}
}

class Human : LivinBeing{
    var name : String?
    
    init(name : String? ,age: Int?)
    {
        if let name = name {
            self.name = name
        }
            super.init(age : age ?? 0)
    }
}

class Animal : LivinBeing {
    var IsAMammals : Bool?
    
    init(IsAMammals : Bool? ,age: Int?)
    {
        if let IsAMammals = IsAMammals {
            self.IsAMammals = IsAMammals
        }
            super.init(age : age ?? 0)
        
    }
}

let livingBeingArray = [Animal(IsAMammals : true , age: 12) ,Human(name:"Amar", age:15)]

//let animalObj = livingBeingArray[0] as! Animal
//let humanObj = livingBeingArray[1] as! Human
//print(animalObj.age!)
//print(humanObj.name!)

//let animalObj = livingBeingArray[0] as? Human ?? nil
//let humanObj = livingBeingArray[1] as? Animal ?? nil

for obj in livingBeingArray{
    switch obj{
        case is Animal:
        print(" \(obj) is Animal.")
        break
        
        case is Human:
        print(" \(obj) is Human.")
        break
        
        default: 
        print("Unknown type")
    }
}