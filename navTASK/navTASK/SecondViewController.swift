//
//  SecondViewController.swift
//  navTASK
//
//  Created by faten aldosari on 29/02/2024.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    let textLabel = UILabel()
    var receviedData: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "second page"
        
        view.addSubview(textLabel)
        
        textLabel.text = receviedData
        // Do any additional setup after loading the view.
        setUpLayout()
    }
    
    
    func setUpLayout(){
        
        textLabel.snp.makeConstraints { make in
            
            make.center.equalToSuperview()
        }
        
    }
    
}



