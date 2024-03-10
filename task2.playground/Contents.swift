import UIKit

func isShorterOrEqualThanFive(text:String) -> Bool{
    if text.count <= 5 {
        return true
    }else{
        return false
    }
}
isShorterOrEqualThanFive(text: "faten")


func convertToCelsius (tempF: Double) -> Double{
    var tempC = (tempF - 32) * 5/9
    return tempC
    
}
convertToCelsius(tempF: 40.5)
