//
//  Restaurant.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

struct Restaurant: Codable {
    
    // MARK: - Properties
    
    let id: Int
    let name: String
    let latitude: Double
    let longitued: Double
    let address: String
    let coverPhotos: [String]
    let category: RestaurantCategory
}
