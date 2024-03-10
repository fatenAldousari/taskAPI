//
//  NetworkManager.swift
//  task API
//
//  Created by faten aldosari on 04/03/2024.
//

import Foundation
import Alamofire

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
                print(error)
            }
        }
    }
    
    func addPet(pet: Pet, completion: @escaping (Bool) -> Void){
        AF.request(baseURL,method: .post, parameters: pet,encoder: JSONParameterEncoder.default).response{response in
            
            switch response.result{
            case .success(_):
                completion(true)
            case .failure(let error):
                print(error)
                completion(false)
            }
        }
    }
    func deletePet(PetID: Int, completion: @escaping (Bool) -> Void) {
        AF.request("\(baseURL)/\(PetID)", method: .delete).response { response in
            switch response.result {
            case .success:
                completion(true)
            case .failure(let error):
                print("Error occurred while deleting the Pet: \(error.localizedDescription)")
                completion(false)
            }
        }
    }
}
