//
//  SplashViewController.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

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

    }

    // MARK: - Control events

    @IBAction func signUpTapped(_ sender: UIButton) {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }

    @IBAction func logInTapped(_ sender: UIButton) {
    }
}
