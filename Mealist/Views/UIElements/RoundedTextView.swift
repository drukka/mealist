//
//  RoundedTextView.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class RoundedTextField: UITextField {

    // MARK: - Initialization

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpTextField()
    }

    // MARK: - Private methods

    private func setUpTextField() {
        guard let placeholderColor = UIColor(named: "Ebony Clay") else { return }
        attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
        layer.cornerRadius = frame.height / 2
        layer.masksToBounds = true
    }
}
