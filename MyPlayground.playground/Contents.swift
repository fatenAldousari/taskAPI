import UIKit

for number in 1...5{
    print(number)
}


var count = 5
while count > 0{
    print(count)
    count -= 1
}

var numbersArray = [5,4,6,3] //array
var sum = 0

for num in numbersArray{
    sum += num
}

for i in 1...3 {
    for j in 1...3{
        print("\(i). \(j)")
    }
}

let fruit = "apple"
switch fruit{
case "apple":
    print("a")
case "mango":
    print("m")
default:
    print("h")
}


var fruits = ["apple","mango","bannana"]
//fruits[0]
var apple = fruits[0]
fruits.append("orange")
print(fruits[3])

fruits.remove(at: 3)
 
fruits.count

fruits.insert("blueberry", at: 2)

for fr in fruits{
    print (fr)
}
