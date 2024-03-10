import UIKit
//TASK1
struct Person {
    var name: String
    var birthday: String
}
var faten = Person(name: "faten", birthday: "1998")
print(faten)

//TASK2
struct Employee{
    var id: Int
    var name: String
    var department: String
    func printDetails(){
        print("id: \(id ) name: \(name) department: \(department)")
    }
}
class Company {
    var employees: [Employee] = []
     
    func addEmployess(employee: Employee){
        employees.append(employee)
    }
    func listEmployee(){
        for employ in employees{
            employ.printDetails()
        }
    }
}

var fatenn = Employee(id: 123, name: "faten", department: "IT")
var codedEmp = Company()
codedEmp.listEmployee()
codedEmp.addEmployess(employee: fatenn)


fatenn.printDetails()

