//
//  Order.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

struct OrderItem: Codable {
    
    // MARK: - Properties
    
    let dish: Dish
    let quantity: Int
}
