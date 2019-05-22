//
//  SignUpViewController.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - Initialization

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationBarTitle()
    }

    // MARK: - Private methods

    private func setUpNavigationBarTitle() {
        title = "Sign up"
    }
}
