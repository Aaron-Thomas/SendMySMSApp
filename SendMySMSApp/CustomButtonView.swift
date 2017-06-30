//
//  CustomButtonView.swift
//  NexmoSMS
//
//  Created by Aaron Thomas on 25/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

class CustomButtonView: UIButton {
    
    // make button corners rounded
        override public func layoutSubviews() {
            super.layoutSubviews()
            layer.cornerRadius = 10
        }
    }

    // fade in animation. to use, set btn.alpha = 0.0 in viewDidLoad
    extension UIButton {
        public func fadeIn(withDuration duration: TimeInterval = 1.0) {
            
            UIView.animate(withDuration: duration, animations: {
                self.alpha = 1.0
            })
        }
}
