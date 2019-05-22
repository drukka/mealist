//
//  ForgottenPasswordViewController.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 22..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class ForgottenPasswordViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak var emailTextField: RoundedTextField!
    
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
        setUpNavigationBarItem()
    }

    // MARK: - Private methods

    private func setUpNavigationBarItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelTapped))
    }

    // MARK: - Control events

    @IBAction func resetTapped(_ sender: RoundedButton) {
    }

    @objc func cancelTapped() {
        dismiss(animated: true)
    }
}
