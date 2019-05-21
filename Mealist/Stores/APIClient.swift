//
//  APIClient.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit
import AdSupport

final class APIClient: Networking {
    
    // MARK: - Properties
    
    private let serviceAddress: String = Bundle.main.object(forInfoDictionaryKey: "ServiceAddress") as! String
    private let languageCode: String = Locale.preferredLanguages.first!.components(separatedBy: "-").first!
    private let deviceID: String = ASIdentifierManager.shared().advertisingIdentifier.uuidString
    private let deviceName: String = UIDevice.current.name
    private let jsonDecoder: JSONDecoder
    
    // MARK: - Initialization
    
    init() {
        self.jsonDecoder = JSONDecoder()
        self.jsonDecoder.keyDecodingStrategy = .useDefaultKeys
        self.jsonDecoder.dateDecodingStrategy = .custom({ (decoder) -> Date in
            let container = try decoder.singleValueContainer()
            let dateStr = try container.decode(String.self)
            
            let formatter = DateFormatter()
            formatter.calendar = Calendar(identifier: .iso8601)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
            if let date = formatter.date(from: dateStr) {
                return date
            }
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
            if let date = formatter.date(from: dateStr) {
                return date
            }
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "Invalid date format"))
        })
    }
    
    // MARK: - Private methods
    
    //...
}
