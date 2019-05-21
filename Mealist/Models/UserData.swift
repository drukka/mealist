//
//  UserData.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

struct UserData: Codable {
    
    // MARK: - Properties
    
    let id: Int
    let email: String
    let deliveryDetails: DeliveryDetails?
}
