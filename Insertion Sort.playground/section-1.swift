// Playground - noun: a place where people can play

import Cocoa
import XCPlayground

var data = [9, 51, 65, 46, 96, 34, 1, 79, 2, 44, 38, 48, 32, 12, 88, 78, 20, 67, 4, 47]

func visualize<T> (data:[T], identifier:String){
 
    for x in data{
        
        XCPCaptureValue(identifier, x)
    }

}
visualize(data, "abc")

func exchange<T>(inout data:[T], i:Int, j:Int){
    
    let temp = data[i]
    data[i] = data[j]
    data[j] = temp
    
}
 
exchange(&data, 0, 3)

data

func swapLeft<T:Comparable> (inout data:[T], index:Int ){
    
    for i in reverse(1...index){
        
        if data[i] < data[i-1]{
            exchange(&data, i, i-1)
        }else{
            
            break;
        }
    }
    visualize(data, "Iteration \(index)")
}

swapLeft(&data, 3)

data

func isort<T:Comparable> (inout data:[T]){
    
    for i in 1..<data.count{
        
        swapLeft(&data, i)

    }
}

isort(&data)
visualize(data, "abcd")
data

for x in data{
    
    x
}
