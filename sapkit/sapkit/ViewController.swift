//
//  ViewController.swift
//  sapkit
//
//  Created by faten aldosari on 27/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let profileImageView = UIImageView()
    let usernameLabel = UILabel()
    let userLabel = UILabel()
    let bioLabel = UILabel()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(profileImageView)
        view.addSubview(usernameLabel)
        view.addSubview(userLabel)
        view.addSubview(bioLabel)
        setupUI()
        setupAutolayout()
        }
    
    
    func setupUI() {
        profileImageView.image = UIImage(named: "coded")
        usernameLabel.text = "CODED"
        usernameLabel.font = .boldSystemFont(ofSize: 40)
        userLabel.text = " join coded"
        bioLabel.text = "🥇 1st Coding Academy in the Middle East."
        profileImageView.layer.cornerRadius = 37.5
        profileImageView.clipsToBounds = true

        // Setting number of lines for labels
        
        bioLabel.numberOfLines = 0
        
    }

    func setupAutolayout() {
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.width.height.equalTo(75)
            
            
            usernameLabel.snp.makeConstraints { make in
                make.top.equalTo(profileImageView.snp.bottom).offset(5)
                make.leading.equalToSuperview().offset(30)
            }
            userLabel.snp.makeConstraints { make in
                make.top.equalTo(usernameLabel.snp.bottom).offset(5)
                make.leading.equalToSuperview().offset(30)
            }
            
            bioLabel.snp.makeConstraints { make in
                make.top.equalTo(userLabel.snp.bottom).offset(10)
                make.leading.equalTo(userLabel.snp.leading)
            }
        }
    }

    
    }
    



