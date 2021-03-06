//
//  Dish.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

struct Dish: Codable {
    
    // MARK: - Properties
    
    let id: Int
    let name: String
    let description: String
    let image: String?
    let price: Double
}
