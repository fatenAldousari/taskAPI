//
//  ViewController.swift
//  HRProject
//
//  Created by faten aldosari on 29/02/2024.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController, UITextFieldDelegate {
    let saveButton = UIButton(type: .system)
    let nameTextField = UITextField()
    let imageTextField = UITextField()
    let salaryextField = UITextField()
    let emailextField = UITextField()
    let phoneextField = UITextField()
    let ibanextField = UITextField()
    
    let nameImage = UIImageView()
    var selectedImage = ""
    let nameLabel = UILabel()
    let phoneLabel = UILabel()
    let emailLabel = UILabel()
    let salaryLabel = UILabel()
    let ibanLabel = UILabel()
    let imageLabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        subView()
        setupUI()
        autoLayOut()
        setupNavigationBar()
        saveButton.addTarget(self, action: #selector(saveSelectedButton), for: .touchUpInside)
        phoneextField.delegate = self
        
        
    }
    func subView(){
        view.addSubview(saveButton)
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        view.addSubview(phoneLabel)
        view.addSubview(phoneextField)
        view.addSubview(emailLabel)
        view.addSubview(emailextField)
        view.addSubview(salaryLabel)
        view.addSubview(salaryextField)
        view.addSubview(ibanLabel)
        view.addSubview(ibanextField)
        view.addSubview(imageLabel)
        view.addSubview(imageTextField)
        view.addSubview(nameImage)
    }
    
    func setupUI(){
        saveButton.setTitle("Send", for: .normal)
        saveButton.backgroundColor = .lightGray
        saveButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        saveButton.layer.cornerRadius = 10
        saveButton.layer.borderColor = UIColor.darkGray.cgColor
        saveButton.layer.borderWidth = 3
        
        nameLabel.text = "Full Name"
        phoneLabel.text = "Phone Number"
        emailLabel.text = "Email"
        salaryLabel.text = "Salary"
        ibanLabel.text = "IBAN"
        imageLabel.text = "Profile Image"
        
        nameTextField.placeholder = "Enter your Full Name"
        phoneextField.placeholder = "Enter your Phone Number"
        emailextField.placeholder = "Enter your Email"
        salaryextField.placeholder = "Enter your Salary"
        ibanextField.placeholder = "Enter your IBAN"
        imageTextField.placeholder = "Enter your Profile Image"
        
        
        
    }
    
    func autoLayOut() {
        let verticalSpacing: CGFloat = 20
        let topMargin: CGFloat = 140
        let bottomMargin: CGFloat = 20
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(topMargin)
            make.centerX.equalToSuperview()
        }
        
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
            nameTextField.addBorder()
        }
        
        phoneLabel.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
        }
        
        phoneextField.snp.makeConstraints { make in
            make.top.equalTo(phoneLabel.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
            phoneextField.addBorder()
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneextField.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
        }
        
        emailextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
            emailextField.addBorder()
        }
        
        salaryLabel.snp.makeConstraints { make in
            make.top.equalTo(emailextField.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
        }
        
        salaryextField.snp.makeConstraints { make in
            make.top.equalTo(salaryLabel.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
            salaryextField.addBorder()
        }
        
        ibanLabel.snp.makeConstraints { make in
            make.top.equalTo(salaryextField.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
        }
        
        ibanextField.snp.makeConstraints { make in
            make.top.equalTo(ibanLabel.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
            ibanextField.addBorder()
        }
        
        imageLabel.snp.makeConstraints { make in
            make.top.equalTo(ibanextField.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
        }
        
        imageTextField.snp.makeConstraints { make in
            make.top.equalTo(imageLabel.snp.bottom).offset(verticalSpacing)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
            imageTextField.addBorder()
        }
        
        saveButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-bottomMargin)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
    }
    
    
    func setupNavigationBar(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "doc.badge.gearshape"), style: .plain, target: self, action: #selector(infoPageAction)
        )
        navigationItem.leftBarButtonItem? .tintColor = UIColor.lightGray
        
    }
    
    
    
    @objc func saveSelectedButton(){
        let secondVC = SecondViewController()
        secondVC.imageString = imageTextField.text
        secondVC.name = nameTextField.text
        secondVC.phone = Int(phoneextField.text ?? "")
        secondVC.email = emailextField.text
        secondVC.salary = Double(salaryextField.text ?? "") //safe unwrap
        secondVC.iban = ibanextField.text
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    
    @objc func infoPageAction(){
        let thirdVC = ThirdViewController()
        thirdVC.modalPresentationStyle = .popover
        // self.present(secondVC,n animated: true, completion: nil)
        self.present(thirdVC, animated: true, completion: nil)
//        self.navigationController?.pushViewController(thirdVC, animated: false)
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let currentText = textField.text ?? ""
            let newLength = currentText.count + string.count

            return newLength <= 8
        }

}
extension UIView {
    func addBorder() {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
}



