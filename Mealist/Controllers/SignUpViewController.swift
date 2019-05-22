//
//  SignUpViewController.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak var emailTextField: RoundedTextField!
    @IBOutlet weak var passwordTextField: RoundedTextField!
    @IBOutlet weak var passwordConfirmationTextField: RoundedTextField!

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
        title = "Sign up"
    }

    private func assignDelegates() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
        passwordConfirmationTextField.delegate = self
    }

    // MARK: - Control events

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func signUpTapped(_ sender: RoundedButton) {
        view.endEditing(true)
    }
}

// MARK: - UITextFieldDelegate

extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
            case emailTextField:
                passwordTextField.becomeFirstResponder()
            case passwordTextField:
                passwordConfirmationTextField.becomeFirstResponder()
            default:
                textField.resignFirstResponder()
        }
        return true
    }
}
