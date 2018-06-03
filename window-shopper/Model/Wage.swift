//
//  Wage.swift
//  window-shopper
//
//  Created by John Green on -06-032018.
//  Copyright © 2018 John P. Green. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
        
}
