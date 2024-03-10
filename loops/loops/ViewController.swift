//
//  ViewController.swift
//  loops
//
//  Created by faten aldosari on 28/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    //element
    //variables
    let myButton = UIButton(type: .system)
    let mytextfiled = UITextField()
    let nameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        subViews()
        setupUi()
        autoLayout()
        myButton.addTarget(self, action: #selector(saveButton), for: .touchUpInside)
        
        //let tap = UITapGestureRecognizer(target: self, action: #<#T##Selector?#>)
        // Do any additional setup after loading the view.
    }
    //function
    
    func subViews(){
        view.addSubview(myButton)
        view.addSubview(mytextfiled)
        
    }
    
    func setupUi(){
        myButton.setTitle("Send", for: .normal)
        myButton.backgroundColor = .blue
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        myButton.layer.cornerRadius = 10
        myButton.layer.borderColor = UIColor.red.cgColor
        myButton.layer.borderWidth = 1
        
        
        mytextfiled.placeholder = "type the data"
        mytextfiled.font = UIFont.boldSystemFont(ofSize: 13)
        mytextfiled.textAlignment = .center
        mytextfiled.keyboardType = .numberPad
        
        
        nameLabel.text = "your name"
        
    }
    
    func autoLayout(){
        mytextfiled.snp.makeConstraints { make in
            make.bottom.equalTo(myButton.snp.top).offset(-10)
        }
        
        
        myButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(100)
        }
        nameLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            
        }
        
        
        
        
    }
    @objc func saveButton(){
        nameLabel.text = mytextfiled.text
        
        
    }
}
