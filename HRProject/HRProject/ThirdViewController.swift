//
//  ThirdViewController.swift
//  HRProject
//
//  Created by faten aldosari on 29/02/2024.
//

import UIKit

class ThirdViewController: UIViewController {
    let infoLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
            view.addSubview(infoLabel)
            setUpUI()
            setUpConstraints()
        }

        func setUpUI() {
            infoLabel.text = "Welcome to the Info Page!\n\n\n\n\n\nHere are some instructions:\n\n1. Enter your name as your identification.\n2. Provide accurate and complete information.\n3. Press the 'Send' button to submit your details."
            infoLabel.numberOfLines = 0
            infoLabel.textAlignment = .center
            infoLabel.textColor = .darkText
            infoLabel.font = UIFont.systemFont(ofSize: 16)
        }

        func setUpConstraints() {
            infoLabel.snp.makeConstraints { make in
                    make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
                    make.centerX.equalToSuperview()
                }
        }
    }
