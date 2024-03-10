import UIKit

// json
//let jsonData = """
//[
//    {"id": 2, "name": "Alice Smith", "email": "alice.smith@example.com"},
//    {"id": 1, "name": "John Doe", "email": "john.doe@example.com"},
//    {"id": 3, "name": "Bob Johnson", "email": "bob.johnson@example.com"}
//]
//""".data(using: .utf8)!
//
//struct User: Codable {
//    var id: Int
//    var name: String
//    var email: String
//}
//do{
//    let users = try JSONDecoder().decode([User].self, from: jsonData)
//    print(users)
//    for user in users{
//        print(user.id)
//    }
//    
//}catch{
//    print(error)
//}
let jsonData = """
{
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com",
    "address": {
        "street": "123 Main St",
        "city": "Anytown",
        "zipCode": "12345"
    }
}
""".data(using: .utf8)!
struct User: Codable {
    var id: Int
    var name: String
    var email: String
    var address: Address
}

struct Address: Codable{
    var street: String
    var city: String
    var zipCode: String
}
    
    
    
do {
    let user = try JSONDecoder().decode(User.self, from: jsonData)
    print("User Name: \(user.name), City: \(user.address.city)")
} catch {
    print("Decoding error: \(error)")
}
