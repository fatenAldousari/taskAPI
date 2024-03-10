import UIKit

//struct Car {
//    var make: String
//    var model: String
//    var color: String
//}
//
//var fcar = Car(make: "brado", model: "24", color: "black")
//print(fcar)
//print(fcar.color)


struct Student {
    var id: Int
    var name: String
    var gpa: String
    
    
    
    func study(){
        print("\(name) is studying")
    }
}
//var faten = Student(id: 123, name: "faten", gpa: "4.4")
//print(faten.gpa)
//faten.study()
//faten.id = 222
//print(faten.id)
class ClassRoom {
    var students: [Student] = []
    
    func addStudent(student: Student){
        students.append(student)
    }
}
var codedclass = ClassRoom()
var faten = Student(id: 123, name: "faten", gpa: "4.0")
codedclass.addStudent(student: faten)
codedclass.students.count

// to print a list func listBooks() {
// for book in books{    // books = students
// book.printdetails()

// var libary = Libary()     class name
// libarary.listBooks()

