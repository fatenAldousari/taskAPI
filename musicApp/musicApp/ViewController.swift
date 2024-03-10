//
//  ViewController.swift
//  musicApp
//
//  Created by faten aldosari on 27/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let albumImageView = UIImageView(image: UIImage(named: "harrypotter1"))
    let backgroundImageView = UIImageView(image: UIImage(named: "harrypotter1"))
    //let blurEffect = UIBlurEffect(style: .dark)
    let visualEffectView = UIVisualEffectView(effect:UIBlurEffect(style: .dark))
    let titleLabel = UILabel()
    let progresSlider = UISlider()
   
    let playButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "play.fill"), for: .normal)
        button.tintColor = .white
        return button
    }()
    let nextButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "forward.fill"), for: .normal)
        button.tintColor = .white
        return button
    }()
    let previousButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "backward.fill"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        subView()

        setupBackground()
        setupBlurEffect()
        setupAlbumImage()
        
        
        
    }
    
    func subView(){
        view.addSubview(backgroundImageView)
        view.addSubview(visualEffectView)
        visualEffectView.frame = backgroundImageView.bounds
        view.addSubview(albumImageView)
        view.addSubview(titleLabel)
        view.addSubview(progresSlider)
        view.addSubview(playButton)
        view.addSubview(nextButton)
        view.addSubview(previousButton)
    }
    
    func setupBackground() {
        
        backgroundImageView.contentMode = .scaleAspectFill
        
        
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        playButton.snp.makeConstraints { make in
            make.top.equalTo(albumImageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        nextButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.leading.equalTo(playButton.snp.trailing).offset(20)
        }
        previousButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.trailing.equalTo(playButton.snp.leading).offset(-20)
        }
    }
    
    func setupBlurEffect() {
        
        
        
        visualEffectView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func setupAlbumImage() {
        albumImageView.contentMode = .scaleAspectFit
        albumImageView.layer.cornerRadius = 10
        albumImageView.clipsToBounds = true
        
        
        albumImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(albumImageView.snp.width)
            
            
            titleLabel.text = "Harry Potter"
            titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            titleLabel.numberOfLines = 1
            
            titleLabel.snp.makeConstraints { make in
                make.top.equalTo(albumImageView.snp.bottom)
            }
            
            
            
            progresSlider.minimumValue = 0
            progresSlider.maximumValue = 1
            progresSlider.setThumbImage(UIImage(systemName: "circle.fill"), for: .normal)
            
            progresSlider.snp.makeConstraints { make in
                make.top.equalTo(albumImageView.snp.bottom).offset(16)
                make.centerX.equalToSuperview()
                make.width.equalToSuperview().multipliedBy(0.8)
            }
        }
        
    }
    
}






