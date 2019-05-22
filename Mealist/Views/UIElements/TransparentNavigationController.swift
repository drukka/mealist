//
//  TransparentNavigationController.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 22..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class TransparentNavigationController: UINavigationController {

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationBar()
    }

    // MARK: - Private methods

    func setUpNavigationBar() {
        guard let navigationBarColor = UIColor(named: "Trendy Pink") else { return }
        guard let navigationBarTitleColor = UIColor(named: "Ebony Clay") else { return }
        guard let navigationBarFont = UIFont(name: "SFCompactText-Regular", size: 14) else { return }
        navigationBar.backgroundColor = .clear
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.tintColor = navigationBarColor
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: navigationBarTitleColor, NSAttributedString.Key.font: navigationBarFont]
    }
}
