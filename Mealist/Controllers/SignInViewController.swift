//
//  SignInViewController.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 22..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit
import SwiftyAttributes

class SignInViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak var emailTextField: RoundedTextField!
    @IBOutlet weak var passwordTextField: RoundedTextField!
    @IBOutlet weak var forgottenPasswordTextView: UITextView!
    
    
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
        setUpForgottenPasswordTextView()
    }

    // MARK: - Private methods

    private func setUpNavigationBarTitle() {
        title = "Log in"
    }

    private func assignDelegates() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
        forgottenPasswordTextView.delegate = self
    }

    private func setUpForgottenPasswordTextView() {
        guard let textColor = UIColor(named: "Ebony Clay") else { return }
        guard let textFont = UIFont(name: "SFCompactText-Regular", size: 14) else { return }
        let paragraphyStyle = NSMutableParagraphStyle()
        paragraphyStyle.alignment = .center
        let attributedText = "Forgot password? ".withTextColor(textColor) +
                             "Tap here".withAttribute(.link(URL(string: "forgottenPassword")!)) +
                             ".".withTextColor(textColor)
        forgottenPasswordTextView.attributedText = attributedText.withAttributes([.font(textFont), .paragraphStyle(paragraphyStyle)])
    }

    private func navigateToForgottenPasswordScreen() {
        present(ForgottenPasswordViewController(), animated: true)
    }

    // MARK: - Control events

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func signInTapped(_ sender: RoundedButton) {
        view.endEditing(true)
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

// MARK: - UITextViewDelegate

extension SignInViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        if URL.absoluteString == "forgottenPassword" {
            navigateToForgottenPasswordScreen()
        }
        return false
    }
}
