//
//  Review.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

struct Review: Codable {
    
    // MARK: - Properties
    
    let id: Int
    let user: UserData
    let date: Date
    let stars: Int
    let text: String
}
