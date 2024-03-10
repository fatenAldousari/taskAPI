//
//  SecondViewController.swift
//  HRProject
//
//  Created by faten aldosari on 29/02/2024.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    var name: String?
    var phone: Int?
    var email: String?
    var salary: Double?
    var iban: String?
    var imageString: String?
    
    let profileImage = UIImageView()
    let generalConstrainView = UIView()
    let welcomeLabel = UILabel()
    let nameLabel = UILabel()
    let phoneLabel = UILabel()
    let emailLabel = UILabel()
    let salaryLabel = UILabel()
    let ibanLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "second page"
        
        //adding
        view.addSubview(profileImage)
        view.addSubview(generalConstrainView)
        generalConstrainView.addSubview(welcomeLabel)
        generalConstrainView.addSubview(nameLabel)
        generalConstrainView.addSubview(phoneLabel)
        generalConstrainView.addSubview(emailLabel)
        generalConstrainView.addSubview(salaryLabel)
        generalConstrainView.addSubview(ibanLabel)
        
        
        setUpUI()
        setUpConstaints()
    }
    
    
    func setUpUI(){
        
        
        profileImage.image = UIImage(named: imageString ?? "")
        profileImage.contentMode = .scaleAspectFill
        welcomeLabel.text = "Welcome! "
        nameLabel.text = name
        phoneLabel.text = "Phone: \(phone ?? 0)"
        emailLabel.text = "Email: \(email ?? "")"
        salaryLabel.text = "Salary: \(salary ?? 0.0)"
        ibanLabel.text = "IBAN: \(iban ?? "")"
        
        // Styling
        welcomeLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
    }
    
    
    func setUpConstaints(){
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(200)
        }
        
        
        generalConstrainView.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
        }
        
        
        
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.centerX.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        phoneLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
        }
        
        salaryLabel.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
        }
        
        ibanLabel.snp.makeConstraints { make in
            make.top.equalTo(salaryLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
        }
    }
}


