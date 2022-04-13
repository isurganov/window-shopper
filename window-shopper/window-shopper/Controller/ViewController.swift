//
//  MainVC.swift
//  window-shopper
//
//  Created by Spotted Zona on 4/13/22.
//  Copyright © 2022 Ivan Surganov. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.742254436, blue: 0.202596277, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        self.wageTxt.inputAccessoryView = calcButton
        self.priceTxt.inputAccessoryView = calcButton
    }

    @objc func calculate() {
        print("We got here")
    }

}

