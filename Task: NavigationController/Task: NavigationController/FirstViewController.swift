//
//  ViewController.swift
//  Task: NavigationController
//
//  Created by faten aldosari on 29/02/2024.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {
    let navigateButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "first page"
        view.addSubview(navigateButton)
        setUpUi()
        setUpAutoLayout()
        setupnavbar()
        navigateButton.addTarget(self, action: #selector(navButtonTapped), for: .touchUpInside)
    }
    
    func setUpUi(){
        navigateButton.setTitle("Show Details", for: .normal)
        navigateButton.backgroundColor = .systemGray
        navigateButton.layer.cornerRadius = 10
    }
    
    func setUpAutoLayout(){
        navigateButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    func setupnavbar(){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    @objc func navButtonTapped(){
        let secondVC = SecondViewController()
        
        secondVC.receviedData = "Welcome to Details View!"
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }


}

