var items = ["John","Bob","Watson"]

func position(of string: String , in array: [String]) -> Int? {
    for i in 0..<array.count {
        if array[i] == string
        {
            return i
        }
    }
    return nil
}

let johnPosition = position(of: "John" , in : items)
let bobPosition = position(of: "Bob" , in : items)


print(johnPosition!)
print(bobPosition!)

if let amarPosition = position(of: "Amar" , in : items)
{
print(amarPosition)
}
else
{
    print("Amars position was not found")
}

                    /* Here it will return 0 for all non present names in items so we wont know if 0 is for name in array or 
                    it is other 0 so we use optional to avoid this. */

/*
func albumReleased(name : String ) ->Int?
{
    if name == "dj"
    {
         return 2012
    }
    if name == "perfect" { return 2019}
    return nil
}

var year = albumReleased(name : "perfect")
if year == nil {
    print("there was no record found")
}else
{
    print("Album was released in \(year!)")
}
*/


/* Chaining in optionals */

func albumReleased(year : Int) -> String?
{
    switch year
    {
        case 2006 : return "Sarah Taylor"
        case 2010 : return "Honey Singh"    
        case 2014 : return "Jalebi"
        default: return nil
    }
}


    if let album =  albumReleased(year : 2010)?.uppercased() // optional Chaining
    {
    print("The album is \(album)")
    }
    else
    {
        print("cant found record")
    }
    
    let album =  albumReleased(year : 2012) ?? "Unknown" // optional Chaining
    print("The album is \(album)")