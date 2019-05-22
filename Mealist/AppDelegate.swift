//
//  AppDelegate.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 20..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit
import Swinject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties

    var window: UIWindow?
    static let shared: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    let appContainer: Container = Container()
    private let appDependencies: AppDependencies = AppDependencies()

    // MARK: - Application life cycle

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        appDependencies.setup(with: self.appContainer)
        setUpRootViewController()
        return true
    }

    // MARK: - Private methods

    private func setUpRootViewController() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = SplashViewController()
        window.makeKeyAndVisible()
    }
    
    
}

