//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Spotted Zona on 4/13/22.
//  Copyright © 2022 Ivan Surganov. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField{
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }

    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
             
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
