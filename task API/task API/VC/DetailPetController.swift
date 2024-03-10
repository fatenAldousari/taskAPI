//
//  DetailPetController.swift
//  task API
//
//  Created by faten aldosari on 04/03/2024.
//

import UIKit
import Kingfisher
import SnapKit
import Alamofire

class DetailPetController: UIViewController {
    var ppets: Pet?
    
    private let petId = UILabel()
    private let petName = UILabel()
    private let petAdopted = UILabel()
    private let petImage = UIImageView()
    private let petAge = UILabel()
    private let petGender = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(petId)
        view.addSubview(petImage)
        view.addSubview(petName)
        view.addSubview(petAge)
        view.addSubview(petGender)
        view.addSubview(petAdopted)
        
        setupViews()
        setupLayout()
        configPets( )
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    private func setupViews(){
        view.backgroundColor = .white
        petId.font = .systemFont(ofSize: 16, weight: .medium)
        petName.font = .systemFont(ofSize: 16, weight: .medium)
        petAdopted.font = .systemFont(ofSize: 16, weight: .medium)
        petAge.font = .systemFont(ofSize: 16, weight: .medium)
        petGender.font = .systemFont(ofSize: 16, weight: .medium)
        
        let url = URL(string: ppets?.image ?? "")
        petImage.kf.setImage(with:url)
        petImage.layer.cornerRadius = 100/2
        petImage.clipsToBounds = true
    }

    private func setupLayout(){
        petImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.width.height.equalTo(100)
        }
        petId.snp.makeConstraints { make in
            make.top.equalTo(petImage.snp.bottom).offset(-20)
            make.centerX.equalToSuperview()
            
        }
        
        petName.snp.makeConstraints { make in
            make.top.equalTo(petId.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        petAdopted.snp.makeConstraints { make in
            make.top.equalTo(petName.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        petAge.snp.makeConstraints { make in
            make.top.equalTo(petAdopted.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        petGender.snp.makeConstraints { make in
            make.top.equalTo(petAge.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    func configPets(){
        petId.text = "pet ID: \(ppets?.id ?? 0 )"
        petName.text = "pet name: \(ppets?.name ?? "N/A")"
        
        // ppets?.adopted >> true --> yes or false --> No
        petAdopted.text = "Adopted?: "
        petAge.text = "pet Age: \(ppets?.age ?? 0 )"
        petGender.text = "pet gender: \(ppets?.gender ?? "N/A")"
    }
}

