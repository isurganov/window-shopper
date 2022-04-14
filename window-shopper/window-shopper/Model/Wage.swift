//
//  Wage.swift
//  window-shopper
//
//  Created by Иван Трубецкой on 14.04.2022.
//  Copyright © 2022 Ivan Surganov. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
