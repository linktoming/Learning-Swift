// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
let languageName = "Swift"
var version = 1.0
let introduced = 2014
let isAwesome = true
let 😀 = "Hi"
let someString = "I/ appear/ to be a/ string"

let componets = someString.pathComponents

for character in "mouse"{
    println(character)
}
//let a = "d"

let dog:Character = "D"

let cow:Character = "F"

let dogCow = dog+cow

dogCow.lowercaseString

let instruction = "Beware of the " + dogCow

let a = 3, b = 5

let mathResult = "\(a) times \(b) is \(a*b)"

var names:[String] = ["Anna","Alex","Brain","Jack","2"]

var numberOfLegs = ["ant":6, "snake":0]

for number in 1...5{
    
    var a = number
    
}

var shoppingList = ["Eggs","Milk"]

shoppingList[0]

shoppingList+="Flour"

shoppingList+=["Cheese","Butter","Chocolate Spread"]

shoppingList[0] = "Six Eggs"

shoppingList

shoppingList[3...5] = ["Bananas"]

shoppingList

var numberOfLegsTwo = ["ant":6, "snake":0,"cheetah":4]

numberOfLegsTwo["spider"] = 234

numberOfLegsTwo["spider"] = 4

numberOfLegsTwo

switch a{
    
case 0:
    println("You tapped the button 1.")
case 1:
    
    println("You tapped the button 1")
    
default:
    println("You defualt")
}

func sayHello(name:NSString = "WWDC"){
    
    println("Hello \(name)")
}

sayHello(name: "Mingming")

sayHello()

func buildGreeting(name:String = "World") -> String{
    
    return "Hello " + name
}

buildGreeting(name: "Mingming")

let greeting = buildGreeting()

func refreshWebPage() -> (Int, String){
    
    return (200, "Success")
}

let (statusCode, message) = refreshWebPage()

statusCode
message

for (name, count) in numberOfLegsTwo{
    
    println("\(name) has \(count) legs")
}

func refreshWebPageWithStatus() -> (code:Int, message:String){
    
    return (200, "Success")
}

let status = refreshWebPageWithStatus()

println("\(status.code) \(status.message)")

let greetingPrinter = {
    
    println("Hello World!")
}

greetingPrinter()

func repeat (count:Int, task:()->()){
    
    for i in 0..<count{
        
        task()
    }
}

repeat(4, greetingPrinter)

class Vehicle{
    
    var numberOfWheels = 0
    
    var description: String{
    return "\(numberOfWheels) wheels"
    }
    
    
}

let someVehicle = Vehicle()
someVehicle.numberOfWheels = 100
someVehicle.description

class Bicycle:Vehicle{
    
    init() {
        
        super.init()
        numberOfWheels = 2
    }
    
}

let myBicycle = Bicycle()

println(myBicycle.description)

class Car: Vehicle{
    
    var speed = 0.0
    init() {
        
        super.init()
        numberOfWheels = 4
    }
    
    override var description:String{
    
    return super.description + ",\(speed) mph"
    }
}

let myCar = Car()
myCar.speed = 100
println(myCar.description)

class ParentsCar:Car{
    
    override var speed:Double{
    willSet{
        if newValue > 65.0 {
            
            println("Careful Now.")
        }
    }
    didSet{
        println("Speed now is set to \(speed) mph")
    }
    
    }
}

let myParentsCare = ParentsCar()
println(myParentsCare.description)
myParentsCare.speed = 100.0
println(myParentsCare.description)

class Counter{
    
    var count = 0
    
    func incrementBy(amount:Int){
        
        count += amount
    }
    
    func resetToCount(count: Int){
        
        self.count = count
    }
}

struct Point{
    
    var x, y : Double
}

struct Size{
    
    var width, height:Double
}

struct Rect{
    
    var origin:Point
    var size:Size
    
    var area: Double{
    
    return size.width * size.height
    }
    
    func isBiggerThanRect(other:Rect) -> Bool{
        
        return self.area > other.area
    }
}

var point = Point (x: 0.0, y: 0)

enum Planet:Int{
    
    case Mercury = 1, Venus, Earth
}

let earth = Planet.Earth.toRaw()

enum CompassPoint{
    
    case North, South, East, West
}

var directionToHead = CompassPoint.North

directionToHead = .West

class Train{
    enum Status{
        
        case OnTime
        case Delayed(Int)
        
        init(){
            
            self = OnTime
        }
        
        var description: String{
        
        switch self{
        case .OnTime:
            return "the train is on time"
            
        case .Delayed(let mintuesDelayed):
            return "the tain is delayed by \(mintuesDelayed)"
            }
        }
    }
    
    var status = Status()
}
//var trainStatus = TrainStatus.OnTime
//
//trainStatus = .Delayed(43)
//
//var onTimeTrain = TrainStatus()
//
//println(onTimeTrain.description)
//
//onTimeTrain = .Delayed(43)
//
//println(onTimeTrain.description)

extension CGSize{
    
    mutating func increaseByFactor (factor: CGFloat){
        
        width *= factor
        height *= factor
    }
}

extension Int{
    
    func repetions(task: () -> ()){
        
        for i in 0..<self{
            
            task()
        }
    }
}

10.repetions{
    
    println("Hello")
}

struct Stack<T>{
    
    var elements = [T]()
    
    mutating func push (element: T){
        
        elements.append(element)
    }
    mutating func pop() -> T{
        
        return elements.removeLast()
    }
}

var intStack = Stack<Int>()
intStack.push(50)
let lastInt = intStack.pop()

var stringStack = Stack<String>()

stringStack.push("2")

stringStack.pop()




