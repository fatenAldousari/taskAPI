//
//  NetworkManager.swift
//  Task: Networking and API
//
//  Created by faten aldosari on 04/03/2024.
//

import Foundation
import Alamofire

struct Pet: Codable {
    let id: Int
    let name: String
    let adopted: Bool
    let image: String
    let age: Int
    let gender: String
}


class NetworkManager {
    private let baseURL = "https://coded-pets-api-crud.eapi.joincoded.com/pets"
    static let shared = NetworkManager()
    
    
    func fetchPets(completion: @escaping([Pet]?) -> Void){
        
        AF.request(baseURL).responseDecodable(of: [Pet].self) { response in
            switch response.result{
            case.success(let pet):
                completion(pet)
            case.failure(let error):
                completion(nil)
            }
        }
    }
}

