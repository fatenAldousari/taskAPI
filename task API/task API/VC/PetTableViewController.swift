//
//  ViewController.swift
//  task API
//
//  Created by faten aldosari on 04/03/2024.
//

import UIKit
import Alamofire


class PetTableViewController: UITableViewController {
    var pets: [Pet] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        fetchPetsData()
//        setUPNAv()
        setupNavigationBar()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let pet = pets[indexPath.row]
        cell.textLabel?.text = pet.name
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailPetController()
        let selectedPet = pets[indexPath.row]
        detailVC.ppets = selectedPet
        navigationController?.pushViewController(detailVC, animated: true)
        }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let petToDelete = pets[indexPath.row]
            NetworkManager.shared.deletePet(PetID: petToDelete.id!) { [weak self] success in
                DispatchQueue.main.async {
                    if success {
                        
                        self?.pets.remove(at: indexPath.row)

                        
                        tableView.deleteRows(at: [indexPath], with: .fade)
                    } else {
                        
                    }
                }
            }
        }
    }
//    func setUPNAv(){
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithDefaultBackground()
//        navigationController?.navigationBar.scrollEdgeAppearance = appearance
//    }
    
    private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addPetTapped))
    }

    @objc private func addPetTapped() {
        let addPetVC = UINavigationController(rootViewController: AddPetViewController())
        present(addPetVC,animated: true)
       
    }



}
extension PetTableViewController{
    func fetchPetsData(){
        NetworkManager.shared.fetchPets { fetchedPets in
            DispatchQueue.main.async {
                self.pets = fetchedPets ?? []
                self.tableView.reloadData()
            }
            
        }
    }
}

