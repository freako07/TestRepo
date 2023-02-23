class Tesla {
    let manufacturer = "Tesla"
    let year : Int
    let model : String
    
    init()
    {
        self.model = "x"
        self.year = 2023
    }
    
    init(model : String , year : Int)
    {
        self.model = model
        self.year = year
    }
    
    convenience init(model : String)
    {
        self.init(model : model , year : 2023)
    }
}
        
        class TeslaModelY : Tesla{
            override init() {
                 super.init( model : "Y" ,year : 2023)
            }
        }


let modelY = TeslaModelY()
print(modelY.model)
print(modelY.manufacturer)
print(modelY.year)


struct Employee{
    let name : String
    var vacationRemain : Int
    
   mutating func takeVacation(days : Int){
        if vacationRemain > days{
        vacationRemain -= days
        print("Going on vacation for \(days) days")
        print("Days remaining : \(vacationRemain)")
    }
    else
    {
        print("Cant take vacation")
    }
}
}

var amar = Employee(name :"Amar" ,  vacationRemain : 10 )
amar.takeVacation(days : 2)


// use of mutating func

