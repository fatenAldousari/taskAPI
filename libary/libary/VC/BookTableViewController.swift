//
//  ViewController.swift
//  libary
//
//  Created by faten aldosari on 04/03/2024.
//

import UIKit
import Alamofire

class BookTableViewController: UITableViewController {
    var books: [Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchBooksData()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let book = books[indexPath.row]
        cell.textLabel?.text = book.title
        
        return cell
    }

    

}
// extension FOR NETWORKING ?
extension BookTableViewController{
    
    //network class function
    func fetchBooksData(){
        NetworkManager.shared.fetchBooks { fetchedBooks in
            DispatchQueue.main.async {
                self.books = fetchedBooks ?? []
                self.tableView.reloadData()
            }
        }
    }
}

