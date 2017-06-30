//
//  CustomLabel.swift
//  SendMySMSApp
//
//  Created by Aaron Thomas on 29/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
        
    // make label corners rounded
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }
}
