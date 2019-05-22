//
//  SignInViewController.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 22..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak var emailTextField: RoundedTextField!
    @IBOutlet weak var passwordTextField: RoundedTextField!
    @IBOutlet weak var forgottenPasswordLabel: UILabel!

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

    @IBAction func signInTapped(_ sender: RoundedButton) {
    }
}
