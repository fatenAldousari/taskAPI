//
//  Network.swift
//  libary
//
//  Created by faten aldosari on 04/03/2024.
//

import Foundation
import Alamofire
class NetworkManager {
    //API
    private let baseURL = "https://coded-books-api-crud.eapi.joincoded.com/books"
    static let shared = NetworkManager() // singleton
    
    func fetchBooks(completion: @escaping([Book]?) -> Void ){
        // codable
        AF.request(baseURL).responseDecodable(of: [Book].self) { reponse in
           
            switch reponse.result{
                
            case .success(let book):
                completion(book)
            case .failure(let error):
                completion(nil)
            }
           
        }
        
    }
    
}
