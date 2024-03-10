import UIKit
//array
var book = ["HarryPotter1","HarryPotter2","HarryPotter3","HarryPotter4","HarryPotter5"]
book.count
book.append("HarryPotter6")
book.insert("HungerGames", at: 1)
book.remove(at: 2)

//switch
var grade = "A"
switch grade{
case "A":
    print("Excellent")
case"B":
    print("Good")

case"C":
        print("Average")
case"D":
    print("Below avg")
case"F":
    print("poor")
default:
    print("notfound")
    
}

var trafficLight = "yellow"
switch trafficLight{
case"red":
    print("stop")
case"yellow":
    print("get ready")
case"green":
    print("go")
default:
    print("notfound")
}
//loops 1
var favFruits = ["apple","banana","cherry"]
for fr in favFruits{
    print(fr)
}
//loops 2
for i in 1...5{
    for j in 1...5{
      var sum = i*j
        print (sum)
    }
}



