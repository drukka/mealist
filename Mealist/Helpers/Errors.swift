//
//  Errors.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 22..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

enum NetworkingError: Error {
    case serviceError(HTTPStatusCode)
}
