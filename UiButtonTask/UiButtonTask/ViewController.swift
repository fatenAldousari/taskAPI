//
//  ViewController.swift
//  UiButtonTask
//
//  Created by faten aldosari on 28/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let myButton = UIButton(type: .system)
    let mytextfiled = UITextField()
    let nameImage = UIImageView()
    var selectedImage = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        subView()
        setupUi()
        autoLayout()
        myButton.addTarget(self, action: #selector(saveButton), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    func subView(){
        view.addSubview(myButton)
        view.addSubview(mytextfiled)
        view.addSubview(nameImage)
        
    }
    
    func setupUi(){
        myButton.setTitle("Send", for: .normal)
        myButton.backgroundColor = .blue
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        myButton.layer.cornerRadius = 10
        myButton.layer.borderColor = UIColor.red.cgColor
        myButton.layer.borderWidth = 3
        
        mytextfiled.placeholder = "type the image name"
        mytextfiled.font = UIFont.boldSystemFont(ofSize: 13)
        mytextfiled.textAlignment = .center
        mytextfiled.keyboardType = .alphabet
        
        // nameImage.image = UIImage(named: "harrypotter1")
        
    }
    
    func autoLayout(){
        mytextfiled.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myButton.snp.top).offset(-10)
            
        }
        
        
        myButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(100)
        }
        
        nameImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        
    }
    @objc func saveButton(){
        selectedImage = mytextfiled.text ?? ""
        nameImage.image = UIImage(named: selectedImage)
        
//        selectedImage.nameImage.image = UIImage(named: "harrypotter1")
        
    }
}
