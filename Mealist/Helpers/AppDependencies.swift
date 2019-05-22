//
//  AppDependencies.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation
import Swinject

final class AppDependencies {
    
    // MARK: - Public methods
    
    func setup(with container: Container) {
        self.registerNetworking(to: container)
    }
    
    // MARK: - Private methods
    
    private func registerNetworking(to container: Container) {
        container.register(Networking.self, factory: { _ in
            #if MOCK
                return FakeAPIClient()
            #else
                return FakeAPIClient()
            #endif
        })
    }
}
