//
//  ViewController.swift
//  nav
//
//  Created by faten aldosari on 28/02/2024.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {
    let navigateButton = UIButton() //()infolight !
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "first"
        view.addSubview(navigateButton)
        setupui()
        setupAutoLayout()
        navigateButton.addTarget(self, action: #selector(navButtonTapped), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    func setupui(){
        //MARK: NAV BUTTON
        navigateButton.setTitle("go next page", for: .normal)
        navigateButton.backgroundColor = .systemRed
        navigateButton.layer.cornerRadius = 10
    }
    
    func setupAutoLayout(){
        navigateButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
   func setupnavbar(){
       // let app// notion bar 
    }
    
    
    @objc func navButtonTapped(){
        print ("tapped") 
        
        //nav code
        let secondVC = SeconedViewController()
//        secondVC.modalPresentationStyle = .fullScreen //formsheet half page
//        self.present(secondVC, animated: true) // no back botton
        secondVC.receviedData = "hello from first vc"
    
        //with back botton 
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
}
