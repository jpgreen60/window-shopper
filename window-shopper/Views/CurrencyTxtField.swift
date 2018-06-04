//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by John Green on -06-012018.
//  Copyright © 2018 John P. Green. All rights reserved.
//

import UIKit

// set up Interface Builder to display code-defined views

@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.78622967, green: 0.7815572619, blue: 0.7898223996, alpha: 0.779484161)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true         // must be true to get rounded edges
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
    
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2481271404)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true        // must be set to true, as IB setting was overridden by previous call to draw Rect
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        }

    }
    
}
