import UIKit


//1
var number = "9"
print(Int(number) ?? 0)


var secretMessage: String? = nil
print(secretMessage ?? "empty")


var box2:String? = "car"
print(box2!)


//2


func performLogin(username: String?, password: String?) {
    
    if password != nil && username != nil{
        print(password!, username!)
    }
    if password == nil || username == nil{ //3
        print("error")
    }
    
    if (password != nil && username == nil) || (password == nil && username != nil)
    {
        print("username or password is wrong")
        
    }
}
performLogin(username: "faten", password: nil)
