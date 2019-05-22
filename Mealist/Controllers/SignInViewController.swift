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
        setUpNavigationBarTitle()
        assignDelegates()
    }

    // MARK: - Private methods

    private func setUpNavigationBarTitle() {
        title = "Log in"
    }

    private func assignDelegates() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }

    // MARK: - Control events

    @IBAction func signInTapped(_ sender: RoundedButton) {
    }
}

// MARK: - UITextFieldDelegate

extension SignInViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
            case emailTextField:
                passwordTextField.becomeFirstResponder()
            default:
                textField.resignFirstResponder()
        }
        return true
    }
}
