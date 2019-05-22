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
        guard let navigationBarColor = UIColor(named: "Trendy Pink") else { return }
        guard let navigationBarTitleColor = UIColor(named: "Ebony Clay") else { return }
        guard let navigationBarFont = UIFont(name: "SFCompactText-Regular", size: 14) else { return }
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        let navigationController = UINavigationController(rootViewController: SplashViewController())
        navigationController.navigationBar.backgroundColor = .clear
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.tintColor = navigationBarColor
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: navigationBarTitleColor, NSAttributedString.Key.font: navigationBarFont]
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    
}

