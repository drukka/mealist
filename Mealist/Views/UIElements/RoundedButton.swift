//
//  RoundedButton.swift
//  Mealist
//
//  Created by Levente Dimény on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    // MARK: - Initialization

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = frame.height / 2
        layer.masksToBounds = true
    }
}
