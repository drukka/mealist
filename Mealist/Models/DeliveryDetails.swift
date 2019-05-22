//
//  DeliveryDetails.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

struct DeliveryDetails: Codable {
    
    // MARK: - Properties
    
    let firstname: String
    let lastname: String
    let phoneNumber: String
    let streetAddress: String
    let country: String
    let city: String
}
