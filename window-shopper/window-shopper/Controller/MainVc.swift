//
//  MainVC.swift
//  window-shopper
//
//  Created by Spotted Zona on 4/13/22.
//  Copyright © 2022 Ivan Surganov. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //MARK: - Creating UI ELEMENTS
    
    private let backGroundImage: UIImageView = {
        let background = UIImageView()
        background.image = UIImage(named: "windowShopperBG")
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    let imageSquare: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "windowShopperIcon")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let newTxtField: UITextField = {
        var textField = UITextField()
        textField.backgroundColor = .white
        textField.alpha = 0.5
        textField.layer.cornerRadius = 12.4
        textField.placeholder = "Your hourly wage"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let newTxtField2: UITextField = {
        var textField = UITextField()
        textField.backgroundColor = .white
        textField.alpha = 0.5
        textField.layer.cornerRadius = 12.4
        textField.placeholder = "Item Price"
    
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let newButton: UIButton = {
        
        var button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 0.742254436, blue: 0.202596277, alpha: 1)
        button.setTitle("Calculate", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    //MARK: - View Controller Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Добавляешь UI Елементы
        addUiElements()
//        Добавляешь разметку экрана (вёрстка)
        buildConstraints()
    }
    
    func addUiElements() {
        
        view.addSubview(backGroundImage)
        view.addSubview(imageSquare)
        view.addSubview(newTxtField)
        view.addSubview(newTxtField2)
        view.addSubview(newButton)
    }
    
    //MARK: - Constraints
    
    //вёрстка, ANCOR - NSLayoutAnchor почитай man Apple Developer
    
    func buildConstraints() {



        NSLayoutConstraint.activate([

            backGroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backGroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backGroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backGroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            imageSquare.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
            imageSquare.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            imageSquare.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
            imageSquare.heightAnchor.constraint(equalToConstant: 100),

            newTxtField.topAnchor.constraint(equalTo: imageSquare.bottomAnchor, constant: 50),
            newTxtField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            newTxtField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            newTxtField.heightAnchor.constraint(equalToConstant: 50),
            
            newTxtField2.topAnchor.constraint(equalTo: newTxtField.bottomAnchor, constant: 25),
            newTxtField2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            newTxtField2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            newTxtField2.heightAnchor.constraint(equalToConstant: 50),
            
            newButton.heightAnchor.constraint(equalToConstant: 100),
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])

    }
    
//MARK: - Methods
    
    @objc func calculate() {
        print("We got here")
        updateButtonText()
    }
    
    func updateButtonText() {
        guard let text1 = newTxtField.text else { return  }
        guard let text2 = newTxtField2.text else { return  }
        let title: String = text1 + " with " + text2
        newButton.setTitle(title, for: .normal)
    }

}

