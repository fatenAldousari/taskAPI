import UIKit

var name = "faten"
var age = 25
var Gpa = 3.5
print ("my name is  \(name) ,Im \(age), my gpa is \(Gpa)")

var numericString = "10"
var numericInt = (Int(numericString))
var numericDouble = (Double(numericString))
print("as an int \(numericInt) ,AS A DOUBLE\(numericDouble)")

var agetoDouble = (Double(age))
var gpatoint = (Int(Gpa))
print ("age to double \(agetoDouble) gpa to int\(gpatoint)")

var isStudent = true || false
print(isStudent)

if age >= 13 &&  age <= 19 {
    print ("im a teenager")
} else{
    print ("im not a teenager")
}

if age <= 18 || age >= 65 {
    print ("Eligible for discount")
}else {
    (" not Eligible for discount")
}
