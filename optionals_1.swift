func getStatus(weather : String) -> String?
{
    if weather == "sunny"
    {
        return "sunny"
    }else
    {
        return "Hate"
    }
}



var status : String?
status = getStatus(weather : "sunny")
print(status!)

var name:String = "bob"
print(name)

var name2:String? = "bobs"
print(name2!)

/*func getHaterStatus(weather : String) -> String?
{
    if weather == "sunny"
    { return nil }
    else
    {
        return "Hate"
    }
}


func takeHaterAction(status : String)
{
    if status == "Hate"
   { 
   print("hating")  }
       
}       

if let haterStatus = getHaterStatus( weather : "rainy")
{
takeHaterAction(status : haterStatus)
}
*/
