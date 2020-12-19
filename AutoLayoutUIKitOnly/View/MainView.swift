//
//  MainView.swift
//  AutoLayoutUIKitOnly
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/12/20.
//

import UIKit

class MainView:UIView {
    
    let textlabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let mainButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setTitle("Press me", for: .normal)
        button.backgroundColor = .gray
        button.tintColor = .white
        button.layer.cornerRadius = 8
//        button.frame.size = CGSize(width: 120, height: 40)
        return button
    }()
    
    let pictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "poster")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
        
        self.addSubview(self.textlabel)
        self.addSubview(self.mainButton)
        self.addSubview(self.pictureImageView)
        
        textlabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textlabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            textlabel.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor),
        ])
        
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            mainButton.topAnchor.constraint(equalTo: textlabel.bottomAnchor, constant: 80),
            mainButton.heightAnchor.constraint(equalToConstant: 40),
            mainButton.widthAnchor.constraint(equalToConstant: 120)
            
        ])
        
        pictureImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pictureImageView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            pictureImageView.bottomAnchor.constraint(equalTo: textlabel.topAnchor,constant: -20),
            pictureImageView.heightAnchor.constraint(equalToConstant: 350),
            pictureImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
