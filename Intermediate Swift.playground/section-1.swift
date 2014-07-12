// Playground - noun: a place where people can play

// Optionals
import Cocoa

var str = "Hello, playground"

let age = str.toInt()

var optionalNumber: Int?

optionalNumber = 6

let grade:Int! = str.toInt()

println ("\(grade)")

// Non-Optional Types Can not be nil.

func findIndexOfString(string:String, array:[String] )->Int?{
    
    for(index, value) in enumerate(array){
        
        if value == string{
            
            return index
        }
    }
    
    return nil
}

var neighbors = ["Alex", "Mingming"]

let index = findIndexOfString("Midngming", neighbors)

if index{

    println("Hello, \(neighbors[index!])")
}else{
    
    println("Must've moved away.")
    
}

if let indexValue = findIndexOfString("Mingming", neighbors) {
    
    println("Hello, \(neighbors[indexValue])")
}else{

    println("Must've moved away")
}

class Address{
    
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}

class Residence{
    
    var address: Address?
}

class Person{
    
    var residence:Residence?
}

let paul = Person()
let residence = Residence()
residence.address = Address()
paul.residence = residence

var addressNumber = paul.residence?.address?.buildingNumber?.toInt();


var message:String
message = "Hi"
println("\(message)")
class Color{
    
    
}
class Car{
    
    var paintColor: Color
    func fillGasTank(){
        
        println("Fill the tank.")
    }
    init (color: Color){
        
        paintColor = color;
        fillGasTank()
    }
    
}

class RaceCar: Car{
    
    var hasTurbo: Bool
    override func fillGasTank() {
        
        super.fillGasTank()
        if hasTurbo{
            
            println("Check the turbo.")
        }
        
    }
    init(color: Color, turbo:Bool){

        hasTurbo = turbo
        super.init(color: color)
    }
    
    convenience init(color: Color){
        
        self.init(color:color,turbo:true)
    }
    
    convenience init(){
        
        self.init(color: Color())
    }
}

class FormulaOne:RaceCar{
    
    let minimumWeight = 642
    
    init(color: Color) {
        
        super.init(color: color, turbo: false)
    }
}

class Player{
    
    
}

class MultiplePlayerManager{
    
    func addPlayer(player:Player){
        
        
    }
}

class Game{
    
    @lazy var multiplayerManager = MultiplePlayerManager()
    
    var singlePlayer: Player?
    
    func beginGameWithPlayers(players:Player...){
        
        if players.count == 1{
            
            singlePlayer = players[0]
        }else{
            
            for player in players{
                
                multiplayerManager.addPlayer(player)
            }
        }
    }
    
    deinit{
        
        println("Clean up some memory if needed.")
    }
}





